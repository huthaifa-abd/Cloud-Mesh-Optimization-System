using UnityEngine;
using System.Collections;

public class AssetManagerClass : MonoBehaviour {

	// Use this for initialization
	IEnumerator Start () {
		Debug.Log ("Loading Assets...");
		WWW www = new WWW("http://localhost:50032/Resources/Architecture%20Showcase%20-%20Asset%20Builder/Assets/AssetBundles/assethandler01");
		yield return www;

		// Load and retrieve the AssetBundle
		AssetBundle bundle = www.assetBundle;
		
		// Load the object asynchronously
		AssetBundleRequest request = bundle.LoadAssetAsync ("AssetHandler", typeof(GameObject));

		// Wait for completion
			yield return request;
		
		// Get the reference to the loaded object
		GameObject obj = request.asset as GameObject;

		// Get the designated main asset and instantiate it.
		Instantiate(obj);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
