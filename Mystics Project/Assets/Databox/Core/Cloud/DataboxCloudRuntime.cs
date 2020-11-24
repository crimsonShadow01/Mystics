using UnityEngine;

namespace Databox
{
    public class DataboxCloudRuntime : MonoBehaviour
    {

        public void ForceDownloadRuntime(DataboxObject _database)
        {
            StartCoroutine(DataboxCloud.GetDataIE());
        }
    }
}
