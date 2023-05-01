using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;

public class Line : MonoBehaviour
{
    [SerializeField] private MeshRenderer bgRenderer;
    
    private float _height;
    private int _index;
    public int Index => _index;
    private float _cubeOverlapPercent = 0;
    public float CubeOverlapPercent => _cubeOverlapPercent;

    private MaterialPropertyBlock _propertyBlock;

    public void Init(int index, float height, Color emissiveColor)
    {
        _index = index;
        SetHeight(height);
        _propertyBlock = new MaterialPropertyBlock();
        MaterialMod.SetEmissiveColor(emissiveColor, bgRenderer, _propertyBlock);
        _propertyBlock = new MaterialPropertyBlock();
        MaterialMod.SetOpacity(0, bgRenderer, _propertyBlock);
    }

    public void SetHeight(float height)
    {
        _height = height;
        transform.localScale = new Vector3(transform.localScale.x, height, transform.localScale.z);
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log(name + " " + _index + " is setting to " + Mathf.Pow(_cubeOverlapPercent, 2));
            _cubeOverlapPercent = CalculateOverlap(other);
            MaterialMod.SetOpacity(Mathf.Pow(_cubeOverlapPercent, 2), bgRenderer, _propertyBlock);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        
    }
    
    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log(name + " " + _index + " is setting to " + 0);
            MaterialMod.SetOpacity(0, bgRenderer, _propertyBlock);
            _cubeOverlapPercent = 0;
        }
    }

    private float CalculateOverlap(Collider other)
    {
        float cubeY = other.bounds.center.y;
        float lineY = transform.position.y;
        float distance = Mathf.Abs(cubeY - lineY);
        float cubeHeight = other.bounds.size.y;
        return 1 - (distance / cubeHeight);
    }

    // private void SetOpacity(float opacity)
    // {
    //     bgRenderer.GetPropertyBlock(_propertyBlock);
    //     Color originalColor = _propertyBlock.GetColor(PropColor);
    //     Color newColor = new Color(originalColor.r, originalColor.g, originalColor.b, opacity);
    //     _propertyBlock.SetColor(PropColor, newColor);
    //     bgRenderer.SetPropertyBlock(_propertyBlock);
    // }
    //
    // private void SetEmissiveColor(Color newColor)
    // {
    //     bgRenderer.GetPropertyBlock(_propertyBlock);
    //     _propertyBlock.SetColor(PropEmissive, newColor);
    //     bgRenderer.SetPropertyBlock(_propertyBlock);
    // }
}
