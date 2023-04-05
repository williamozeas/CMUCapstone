using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;

public class Cursor : MonoBehaviour
{
    private Camera cam;
    private float zDepth;
    
    private float distanceToCamera;
    private CinemachineBrain cameraBrain;
    
    void Awake()
    {
        GameManager.Instance.SetCursor(this);
        cam = Camera.main;
        UnityEngine.Cursor.lockState = CursorLockMode.Confined;
        UnityEngine.Cursor.visible = false;
        zDepth = transform.position.z;
    }

    private void Start()
    {
        cameraBrain = cam.GetComponent<CinemachineBrain>();
        cameraBrain.m_CameraCutEvent.AddListener((brain) =>
        {
            if (brain != null)
            {
                if (brain.ActiveVirtualCamera != null)
                {
                    // if virtual camera changed
                    distanceToCamera = Vector3.Distance(transform.position, brain.ActiveVirtualCamera.VirtualCameraGameObject.transform.position);
                    Debug.Log($"on cut event {brain.ActiveVirtualCamera.Name} {distanceToCamera}");
                }
            }
        });
        
        // init distance
        distanceToCamera = Vector3.Distance(transform.position, Camera.main.transform.position);
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 mousePos = cam.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, distanceToCamera));
        transform.position = mousePos;

        if (GameManager.Instance.GameState == GameState.Staff)
        {
            //filter control with x position
            float xPercent = Mathf.Clamp(Input.mousePosition.x / Screen.width, 0, 1);
            AudioManager.Instance.SetSynthFilterFreq(xPercent);

            if (Input.GetMouseButtonDown(0))
            {
                AudioManager.Instance.SetSynthCursor(true);
            }

            if (Input.GetMouseButtonUp(0))
            {
                AudioManager.Instance.SetSynthCursor(false);
            }
        } else if (GameManager.Instance.GameState == GameState.Choices)
        {
            // if (Input.GetMouseButtonDown(0))
            // {
            //     RaycastHit raycastHit;
            //     Ray ray = cam.ScreenPointToRay(new Vector3(Input.mousePosition.x, Input.mousePosition.y, distanceToCamera));
            //
            //     if (Physics.Raycast(ray, out raycastHit, 10f))
            //     {
            //         if (raycastHit.transform && raycastHit.collider.gameObject.TryGetComponent(out IGrabbable grabbableObject))
            //         {
            //             Vector3 screenPoint = cam.WorldToScreenPoint(gameObject.transform.position);
            //
            //             // Vector3 offset = gameObject.transform.position - mainCam.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, screenPoint.z));
            //
            //             grabbableObject.Grabbed(gameObject, offset);
            //             grabbedObject = grabbableObject;
            //         }
            //     }
            //
            // }
        }
    }
}
