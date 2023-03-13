using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeactivateOnPlay : MonoBehaviour
{
    void Awake()
    {
        gameObject.SetActive(false);
    }
}
