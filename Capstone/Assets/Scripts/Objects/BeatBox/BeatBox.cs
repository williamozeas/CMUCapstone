using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeatBox : MonoBehaviour
{
    public int index;

    public List<int> innerCounts = new List<int>();
    // Start is called before the first frame update
    void Start()
    {
        innerCounts.Add(0);
        innerCounts.Add(0);
        innerCounts.Add(0);
        innerCounts.Add(0);
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
}
