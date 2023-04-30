using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Serialization;

public class BeatBox : MonoBehaviour
{
    public int index;

    [ColorUsage(true, true)] [SerializeField]
    private Color flashColor;
    [ColorUsage(true, true)] [SerializeField]
    private Color startColor;
    private List<MeshRenderer> renderers;

    public List<int> innerCounts = new List<int>();
    // Start is called before the first frame update
    void Start()
    {
        innerCounts.Add(0);
        innerCounts.Add(0);
        innerCounts.Add(0);
        innerCounts.Add(0);
        renderers = GetComponentsInChildren<MeshRenderer>().ToList();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent<DrumParticle>(out DrumParticle particle))
        {
            innerCounts[(int)particle.drum]++;
        }
        UpdateNumber();
    }
    
    private void OnTriggerExit(Collider other)
    {
        if (other.TryGetComponent<DrumParticle>(out DrumParticle particle))
        {
            innerCounts[(int)particle.drum]--;
        }
        UpdateNumber();
    }

    public void UpdateNumber()
    {
        int acc = 0;
        for (int i = 0; i < innerCounts.Count; i++)
        {
            if (innerCounts[i] > 0)
            {
                acc += 1 << i;
            }
        }
        Debug.Log("setting " + index + " to " + acc);
        AudioManager.Instance.Mixer.SetFloat("Acc_drum_" + index, (float)acc / 15);
    }

    private void OnEnable()
    {
        AudioManager.Beat += Beat;
    }
    private void OnDisable()
    {
        AudioManager.Beat -= Beat;
    }

    private void Beat(int num)
    {
        if (num == index)
        {
            StartCoroutine(Flash(1f));
        }
    }

    private IEnumerator Flash(float time)
    {
        MaterialPropertyBlock block = new MaterialPropertyBlock();

        float timeElapsed = 0;
        while (timeElapsed < time)
        {
            timeElapsed += Time.deltaTime;

            float percent = EasingFunction.EaseOutQuad(1, 0, timeElapsed / time);
            foreach (var renderer in renderers)
            {
                Color newColor = Color.Lerp(startColor, flashColor, percent);
                MaterialMod.SetEmissiveColor(newColor, renderer, block);
            }
            
            yield return null;
        }
    }
}
