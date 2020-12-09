using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Collectables : MonoBehaviour
{
    private bool touching = false;
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            Debug.Log("press E to pick up");
            touching = true;
        }
        else
            touching = false;
    }
    private void Update()
    {
        if ((touching == true) && Input.GetKeyDown(KeyCode.E))
            { 
                Destroy(this.gameObject);
            }   

    }

}
