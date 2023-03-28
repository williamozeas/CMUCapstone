using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cube : MonoBehaviour
{
    [SerializeField] private float moveSpeed = 2f;
    [SerializeField] private float minMovement = 0.001f;
    private Rigidbody rb;

    private Vector3 startPos;
    
    // Start is called before the first frame update
    void Awake()
    {
        GameManager.Instance.SetCube(this);
        rb = GetComponent<Rigidbody>();
        startPos = transform.position;
    }

    private void FixedUpdate()
    {
        FollowCursor();
    }

    private void FollowCursor()
    {
        Vector3 cursorPos = GameManager.Instance.Cursor.transform.position;
        Vector3 currentPos = transform.position;
        float goalDeltaY = cursorPos.y - currentPos.y;
        // float deltaY = goalDeltaY * moveSpeed * Time.deltaTime;
        // if (Mathf.Abs(goalDeltaY) < Mathf.Abs(deltaY))
        // {
        //     Vector3 newPos = new Vector3(startPos.x, currentPos.y + goalDeltaY, startPos.z);
        //     // transform.position = newPos;
        //     // rb.MovePosition(newPos);
        // }
        // else if (Mathf.Abs(goalDeltaY) > minMovement)
        // {
        //     Vector3 newPos = new Vector3(startPos.x, currentPos.y + deltaY, startPos.z);
        //     // transform.position = newPos;
        //     // rb.MovePosition(newPos);
        // }
        rb.velocity = Vector3.zero;
        rb.AddForce(goalDeltaY * moveSpeed * Vector3.up, ForceMode.VelocityChange);

        // rb.velocity = goalDeltaY * moveSpeed * Vector3.up;
    }
}
