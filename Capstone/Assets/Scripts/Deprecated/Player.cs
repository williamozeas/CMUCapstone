using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Deprecated
{
    public class Player : MonoBehaviour
    {
        public float jumpForce = 3f;
        public float downForce = 3f;

        public static event Action<int> MoveUp;
        public static event Action<int> MoveDown;

        private int _lineIndex = 2;
        private bool movingUp = false;

        [SerializeField] private Rigidbody rb;
        public Rigidbody Rb => rb;
        [SerializeField] private Collider coll;
        public Collider Coll => coll;

        private void Awake()
        {
            // GameManager.Instance.SetPlayer(this);
        }

        private void Update()
        {
            if (!movingUp && rb.velocity.y > 0)
            {
                Debug.Log("Disabling coll");
                movingUp = true;
                Physics.IgnoreLayerCollision(LayerMask.NameToLayer("Player"), LayerMask.NameToLayer("Staff"), true);
            }
            else if (movingUp && rb.velocity.y <= 0)
            {
                Debug.Log("Enabling coll");
                movingUp = false;
                Physics.IgnoreLayerCollision(LayerMask.NameToLayer("Player"), LayerMask.NameToLayer("Staff"), false);
            }
        }

        public void MovePlayerDown()
        {
            if (_lineIndex > 0)
            {
                _lineIndex--;
                MoveDown?.Invoke(_lineIndex);
                rb.AddForce(Vector3.down * downForce, ForceMode.Impulse);
            }
        }

        public void MovePlayerUp()
        {
            // if (_lineIndex < GameManager.Instance.Staff.lines.Count - 1)
            {
                _lineIndex++;
                rb.AddForce(Vector3.up * jumpForce, ForceMode.Impulse);
                // rb.velocity += Vector3.up * jumpForce;
                Debug.Log("aaaa");
                MoveUp?.Invoke(_lineIndex);
            }
        }
    }
}
