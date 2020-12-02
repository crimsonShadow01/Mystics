﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Com.CBStudios.Mystics
{
    public class Motion : MonoBehaviour
    {
        public float speed;

        private Rigidbody rig;

        private void Start()
        {
           // Camera.main.enabled = false; 
            rig = GetComponent<Rigidbody>();
        }

        void FixedUpdate()
        {
            float t_hmove = Input.GetAxis("Horizontal");
            float t_vmove = Input.GetAxis("Vertical");

            Vector3 t_direction = new Vector3(t_hmove, 0, t_vmove);
            t_direction.Normalize();

            rig.velocity = transform.TransformDirection(t_direction) * speed * Time.deltaTime;





        }
    }
}