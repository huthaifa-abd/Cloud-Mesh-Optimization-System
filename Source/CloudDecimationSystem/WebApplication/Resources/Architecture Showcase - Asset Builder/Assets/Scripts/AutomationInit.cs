using UnityEngine;
using System.Collections;
using UnityEditor;

[InitializeOnLoad]
public class AutomationInit : MonoBehaviour {

	static AutomationInit()
	{
		Debug.Log("Up and running");
	}

	// Use this for initialization
	void Start () {
		//http://stackoverflow.com/questions/24032636/how-to-build-assetbundle-without-using-selection
		//BuildPipeline.BuildAssetBundle
		//BuildPipeline.BuildAssetBundle(new GameObject(), null, "", BuildAssetBundleOptions.CollectDependencies | BuildAssetBundleOptions.CompleteAssets);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	


}
