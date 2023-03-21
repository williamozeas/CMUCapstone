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
    
    //cached property indices
    private static readonly int PropColor = Shader.PropertyToID("_BaseColor");
    private static readonly int PropEmissive = Shader.PropertyToID("_EmissionColor");

    public void Init(int index, float height, Color emissiveColor)
    {
        _index = index;
        SetHeight(height);
        _propertyBlock = new MaterialPropertyBlock();
        SetOpacity(0);
        SetEmissiveColor(emissiveColor);
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
            _cubeOverlapPercent = CalculateOverlap(other);
            SetOpacity(Mathf.Pow(_cubeOverlapPercent, 2));
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        
    }
    
    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            SetOpacity(0);
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

    private void SetOpacity(float opacity)
    {
        bgRenderer.GetPropertyBlock(_propertyBlock);
        Color originalColor = _propertyBlock.GetColor(PropColor);
        Color newColor = new Color(originalColor.r, originalColor.g, originalColor.b, opacity);
        _propertyBlock.SetColor(PropColor, newColor);
        bgRenderer.SetPropertyBlock(_propertyBlock);
    }

    private void SetEmissiveColor(Color newColor)
    {
        bgRenderer.GetPropertyBlock(_propertyBlock);
        _propertyBlock.SetColor(PropEmissive, newColor);
        bgRenderer.SetPropertyBlock(_propertyBlock);
    }
}
