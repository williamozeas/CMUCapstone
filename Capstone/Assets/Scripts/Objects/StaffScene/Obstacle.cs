using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class Obstacle : MonoBehaviour
{
    private Material mat;
    private static int rippleCount = 0;
    public float RippleCooldown = 0.2f;
    private float lastTimeRippled = -10;

    // Start is called before the first frame update
    void Awake()
    {
        mat = GetComponentInChildren<MeshRenderer>().sharedMaterial;
        // mat = GetComponent<MeshRenderer>().sharedMaterial;
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.transform.CompareTag("Player"))
        {
            StartRipple(collision.GetContact(0).point);
        }
    }

    private void StartRipple(Vector3 center)
    {
        float currentTime = Time.time - 0.2f;
        if(lastTimeRippled - RippleCooldown > currentTime)
        {
            lastTimeRippled = currentTime;
            rippleCount = (rippleCount + 1) % 5;
            string str = rippleCount.ToString();


            mat.SetVector("_RippleCenter" + str, center);
            // The Time.time value is the same as the Time node in shader graph
            mat.SetFloat("_RippleStartTime" + str, currentTime);
            var colorList = GameManager.Instance.colorList;
            mat.SetColor("_RippleColor" + str, colorList[Random.Range(0, colorList.Count)]);
        }
    }
}
