using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cursor : MonoBehaviour
{
    private Camera cam;
    private float zDepth;
    void Awake()
    {
        GameManager.Instance.SetCursor(this);
        cam = Camera.main;
        UnityEngine.Cursor.lockState = CursorLockMode.Confined;
        UnityEngine.Cursor.visible = false;
        zDepth = transform.position.z;
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 mousePos = cam.ScreenToWorldPoint(Input.mousePosition);
        transform.position = new Vector3(mousePos.x, mousePos.y, zDepth);

        float xPercent = Mathf.Clamp(Input.mousePosition.x / Screen.width, 0, 1);
        AudioManager.Instance.SetSynthFilterFreq(xPercent); 
    }
}
