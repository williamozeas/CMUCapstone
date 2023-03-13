using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cube : MonoBehaviour
{
    [SerializeField] private float moveSpeed = 2f;
    [SerializeField] private float minMovement = 0.001f;

    private Vector3 startPos;
    
    // Start is called before the first frame update
    void Awake()
    {
        GameManager.Instance.SetCube(this);
        startPos = transform.position;
    }

    private void Update()
    {
        FollowCursor();
    }

    private void FollowCursor()
    {
        Vector3 cursorPos = GameManager.Instance.Cursor.transform.position;
        Vector3 currentPos = transform.position;
        float goalDeltaY = cursorPos.y - currentPos.y;
        float deltaY = goalDeltaY * moveSpeed * Time.deltaTime;
        if (Mathf.Abs(goalDeltaY) < Mathf.Abs(deltaY))
        {
            transform.position = new Vector3(startPos.x, currentPos.y + goalDeltaY, startPos.z);
        }
        else if (Mathf.Abs(goalDeltaY) > minMovement)
        {
            transform.position = new Vector3(startPos.x, currentPos.y + deltaY, startPos.z);
        }
    }
}
