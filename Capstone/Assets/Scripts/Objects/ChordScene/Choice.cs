using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class Choice : MonoBehaviour
{
    public ChoiceSet set;
    
    [SerializeField] private int index;
    [SerializeField] private float movementUp = 1.2f;
    [SerializeField] private float moveUpTime = 0.5f;
    private Coroutine movementCoroutine;
    private Coroutine changeColorCoroutine;
    private bool moving = false;
    private bool mousedOver = false;

    private Vector3 anchor;

    private Color _startColor;
    [SerializeField] [ColorUsage(true, true)] private Color _selectedColor;
    private MeshRenderer _renderer;
    private MaterialPropertyBlock _propertyBlock;

    
    // Start is called before the first frame update
    void Start()
    {
        anchor = transform.position;
        _renderer = GetComponent<MeshRenderer>();
        _propertyBlock = new MaterialPropertyBlock();
        _startColor = GameManager.Instance.colorList[(index + set.index * set.Choices.Count) % GameManager.Instance.colorList.Count];
        MaterialMod.SetEmissiveColor(_startColor, _renderer, _propertyBlock);
    }

    // Update is called once per frame
    void Update()
    {
        //float around randomly
        if (moving == false && mousedOver == false)
        {
            Vector3 rand = Random.insideUnitSphere * 0.25f;
            movementCoroutine = 
                StartCoroutine(MoveTo(anchor + rand, Random.Range(1f, 3f), EasingFunction.Ease.EaseInOutQuad));
        }
    }

    private void OnMouseEnter()
    {
        mousedOver = true;
        if(movementCoroutine != null)
            StopCoroutine(movementCoroutine);
        movementCoroutine = StartCoroutine(MoveTo(anchor + Vector3.up * movementUp, moveUpTime, EasingFunction.Ease.EaseOutQuad));
        if(changeColorCoroutine != null)
            StopCoroutine(changeColorCoroutine);
        changeColorCoroutine =
            StartCoroutine(MaterialMod.LerpColor(_selectedColor, moveUpTime, _renderer, _propertyBlock, MaterialMod.PropEmissive));
    }

    private void OnMouseExit()
    {
        mousedOver = false;
        if(movementCoroutine != null)
            StopCoroutine(movementCoroutine);
        movementCoroutine = StartCoroutine(MoveTo(anchor, moveUpTime, EasingFunction.Ease.EaseOutQuad));
        if(changeColorCoroutine != null)
            StopCoroutine(changeColorCoroutine);
        changeColorCoroutine =
            StartCoroutine(MaterialMod.LerpColor(_startColor, moveUpTime, _renderer, _propertyBlock, MaterialMod.PropEmissive));
    }

    private void OnMouseDown()
    {
        set.OnSelect(index);
    }

    private IEnumerator MoveTo(Vector3 destination, float time, EasingFunction.Ease ease)
    {
        moving = true;
        float timeElapsed = 0;
        Vector3 start = transform.position;
        Vector3 end = destination;
        var easingFunction = EasingFunction.GetEasingFunction(ease);
        while (timeElapsed < time)
        {
            float percent = timeElapsed / time;
            transform.position = new Vector3(easingFunction(start.x, end.x, percent), 
                easingFunction(start.y, end.y, percent), 
                easingFunction(start.z, end.z, percent));
            timeElapsed += Time.deltaTime;
            yield return null;
        }
        moving = false;
    }
}
