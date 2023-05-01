using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum DrumType
{
    Kick = 0,
    Snare = 1,
    Perc = 2,
    Hat = 3
}

public class DrumParticle : MonoBehaviour
{
    public DrumType drum;
    private Camera _cam;
    private Plane _plane;
    private void Awake()
    {
        _cam = Camera.main;
        _plane = new Plane(Vector3.up, transform.position);
    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    private void OnMouseOver()
    {
        
        // MaterialMod
    }

    private void OnMouseDrag()
    {
        Ray ray = _cam.ScreenPointToRay(Input.mousePosition);
        float enter;

        if (_plane.Raycast(ray, out enter))
        {
            //Get the point that is clicked
            Vector3 hitPoint = ray.GetPoint(enter);

            //Move your cube GameObject to the point where you clicked
            transform.position = hitPoint;
        }
    }
}
