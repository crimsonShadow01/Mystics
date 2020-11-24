using UnityEngine;

public class ShadowDistance : MonoBehaviour
{
    public float shadowDistance = 2000;

    void Awake()
    {
        QualitySettings.shadowDistance = shadowDistance;
    }
}
