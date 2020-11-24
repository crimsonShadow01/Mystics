// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "BOXOPHOBIC/The Vegetation Engine/Vegetation/Grass Standard Lit"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[ASEBegin][StyledBanner(Grass Standard Lit)]_Banner("Banner", Float) = 0
		[StyledCategory(Render Settings)]_RenderingCat("[ Rendering Cat ]", Float) = 0
		[Enum(Opaque,0,Transparent,1)]_RenderMode("Render Mode", Float) = 0
		[Enum(Both,0,Back,1,Front,2)]_RenderCull("Render Faces", Float) = 0
		[Enum(Flip,0,Mirror,1,None,2)]_RenderNormals("Render Normals", Float) = 0
		[Enum(Alpha,0,Premultiply,1)]_RenderBlend("Render Blend", Float) = 0
		[Enum(Off,0,On,1)]_RenderZWrite("Render ZWrite", Float) = 1
		[IntRange]_RenderPriority("Render Priority", Range( -100 , 100)) = 0
		[Enum(Off,0,On,1)][Space(10)]_RenderClip("Alpha Clipping", Float) = 1
		_Cutoff("Alpha Treshold", Range( 0 , 1)) = 0.5
		[StyledCategory(Global Settings)]_GlobalCat("[ Global Cat ]", Float) = 0
		_GlobalColors("Global Colors", Range( 0 , 1)) = 1
		_GlobalOverlay("Global Overlay", Range( 0 , 1)) = 1
		_GlobalWetness("Global Wetness", Range( 0 , 1)) = 1
		_GlobalLeaves("Global Leaves", Range( 0 , 1)) = 1
		_GlobalHealthiness("Global Healthiness", Range( 0 , 1)) = 1
		_GlobalSize("Global Size", Range( 0 , 1)) = 1
		_GlobalSizeFade("Global Size Fade", Range( 0 , 1)) = 0
		[StyledSpace(10)]_GlobalSpace("# Global Space", Float) = 0
		[HideInInspector][HDR]_LocalColors("Local Colors", Color) = (1,1,1,1)
		[HideInInspector]_LocalLeaves("Local Leaves", Range( 0 , 1)) = 1
		[HideInInspector]_LocalSize("Local Size", Range( 0 , 1)) = 1
		_ColorsMaskValue("Colors Use Mask", Range( 0 , 1)) = 0
		_OverlayContrastValue("Overlay Contrast", Range( 0 , 10)) = 4
		_OverlayVariationValue("Overlay Variation", Range( 0 , 1)) = 0
		_LeavesVariationValue("Leaves Variation", Range( 0 , 1)) = 0
		[StyledCategory(Main Settings)]_MainCat("[ Main Cat ]", Float) = 0
		[NoScaleOffset]_MainAlbedoTex("Main Albedo", 2D) = "white" {}
		[NoScaleOffset]_MainNormalTex("Main Normal", 2D) = "gray" {}
		[NoScaleOffset]_MainMaskTex("Main Mask", 2D) = "white" {}
		[Space(10)]_MainUVs("Main UVs", Vector) = (1,1,0,0)
		[HDR]_MainColor("Main Color", Color) = (1,1,1,1)
		_MainNormalValue("Main Normal", Range( -8 , 8)) = 1
		_MainOcclusionValue("Main Occlusion", Range( 0 , 1)) = 1
		_MainSmoothnessValue("Main Smoothness", Range( 0 , 1)) = 1
		[StyledCategory(Detail Settings)]_DetailCat("[ Detail Cat ]", Float) = 0
		[Enum(Off,0,Overlay,1,Replace,2)]_DetailMode("Detail Mode", Float) = 0
		[Enum(Vertex Paint,0,Projection,1)]_DetailTypeMode("Detail Type", Float) = 0
		[Enum(Standard,0,Packed,1)]_DetailMapsMode("Detail Maps", Float) = 0
		[StyledSpace(10)]_DetailSpace("# Detail Space", Float) = 0
		[StyledCategory(Occlusion Settings)]_OcclusionCat("[ Occlusion Cat ]", Float) = 0
		[HDR]_VertexOcclusionColor("Vertex Occlusion Color", Color) = (0,0,0,0)
		_VertexOcclusionValue("Vertex Occlusion Power", Range( 0 , 8)) = 0
		[StyledCategory(Subsurface Settings)]_SubsurfaceCat("[ Subsurface Cat ]", Float) = 0
		[HideInInspector][ASEDiffusionProfile(_SubsurfaceDiffusion)]_SubsurfaceDiffusion_asset("Subsurface Diffusion", Vector) = (0,0,0,0)
		[HDR]_SubsurfaceColor("Subsurface Color", Color) = (0.3315085,0.490566,0,1)
		_SubsurfaceValue("Subsurface Intensity", Range( 0 , 1)) = 1
		_SubsurfaceViewValue("Subsurface View", Range( 0 , 8)) = 1
		_SubsurfaceAngleValue("Subsurface Angle", Range( 0 , 16)) = 8
		_SubsurfaceLightValue("Subsurface Use Light", Range( 0 , 1)) = 1
		_SubsurfaceMaskValue("Subsurface Use Mask", Range( 0 , 1)) = 1
		[StyledCategory(Gradient Settings)]_GradientCat("[ Gradient Cat ]", Float) = 0
		[HDR]_GradientColorOne("Gradient Color One", Color) = (1,1,1,1)
		[HDR]_GradientColorTwo("Gradient Color Two", Color) = (1,1,1,1)
		_GradientMinValue("Gradient Mask Min", Range( 0 , 1)) = 0
		_GradientMaxValue("Gradient Mask Max ", Range( 0 , 1)) = 1
		[StyledCategory(Noise Settings)]_MoiseCat("[ Noise Cat ]", Float) = 0
		[NoScaleOffset]_NoiseTex("Noise Mask", 2D) = "white" {}
		_NoiseScaleValue("Noise Mask Scale", Range( 0 , 1)) = 0.01
		_NoiseMinValue("Noise Mask Min", Range( 0 , 1)) = 0
		_NoiseMaxValue("Noise Mask Max ", Range( 0 , 1)) = 1
		[HDR][Space(10)]_NoiseTintOne("Noise Tint One", Color) = (1,1,1,1)
		[HDR]_NoiseTintTwo("Noise Tint Two", Color) = (1,1,1,1)
		[StyledCategory(Perspective Settings)]_PerspectiveCat("[ Perspective Cat ]", Float) = 0
		_PerspectivePushValue("Perspective Push", Range( 0 , 4)) = 0
		_PerspectiveNoiseValue("Perspective Noise", Range( 0 , 4)) = 0
		_PerspectiveAngleValue("Perspective Angle", Range( 0 , 8)) = 1
		[StyledCategory(Vertex Settings)]_VertexCat("[ Vertex Cat ]", Float) = 0
		[StyledMessage(Info, The Object motion feature allows for high quality bending motion and interaction. The motion and global elements are calculated per instance., _VertexMotionMode, 0 , 2, 0)]_ObjectDataMessage("# Object Data Message", Float) = 0
		[StyledMessage(Info, The World motion feature allows for simpler and cheaper translation motion and interaction. The motion is calculated in world space but the global elements are calculated per instance., _VertexMotionMode, 1 , 2, 0)]_WorldDataMessage("# World Data Message", Float) = 0
		[StyledMessage(Info, The Baked pivots feature allows for using per mesh element interaction and elements influence. This feature requires pre baked pivots on prefab conversion. Useful for latge grass meshes., _VertexPivotMode, 1 , 0, 0)]_PivotsMessage("# Pivots Message", Float) = 0
		[Enum(Object,0,World,1)][Space(10)]_VertexMotionMode("Vertex Motion", Float) = 0
		[Enum(Object,0,Baked,1)]_VertexPivotMode("Vertex Pivot", Float) = 0
		[StyledSpace(10)]_VertexMotionSpace("# Vertex Motion Space", Float) = 0
		[HDR]_MotionHighlightColor("Motion Highlight", Color) = (2,2,2,1)
		_Motion_10("Motion Bending", Range( 0 , 1)) = 1
		_Motion_32("Motion Flutter", Range( 0 , 1)) = 1
		_Motion_Interaction("Motion Interaction", Range( 0 , 1)) = 1
		[HideInInspector]_MotionAmplitude_10("Primary Bending", Float) = 2
		[HideInInspector]_MotionSpeed_10("Primary Speed", Float) = 6
		[HideInInspector]_MotionScale_10("Primary Elasticity", Float) = 1
		[HideInInspector]_MotionVariation_10("Primary Variation", Float) = 3
		[HideInInspector]_MotionAmplitude_20("Secundary Rolling", Float) = 0
		[HideInInspector]_MotionSpeed_20("Secundary Speed", Float) = 5
		[HideInInspector]_MotionScale_20("Secundary Elasticity", Float) = 0
		[HideInInspector]_MotionVariation_20("Secundary Variation", Range( 0 , 5)) = 0
		[HideInInspector]_MotionAmplitude_30("Leaves Amplitude", Float) = 0
		[HideInInspector]_MotionSpeed_30("Leaves Speed", Float) = 15
		[HideInInspector]_MotionScale_30("Leaves Scale", Float) = 30
		[HideInInspector]_MotionVariation_30("Leaves Variation", Float) = 30
		[HideInInspector]_MotionAmplitude_32("Flutter Amplitude", Float) = 1
		[HideInInspector]_MotionSpeed_32("Flutter Speed", Float) = 30
		[HideInInspector]_MotionScale_32("Flutter Elasticity", Float) = 30
		[HideInInspector]_MotionVariation_32("Flutter Variation", Float) = 30
		[HideInInspector]_InteractionAmplitude("Interaction Bending", Float) = 0
		[HideInInspector]_InteractionVariation("Interaction Variation", Float) = 0
		[StyledCategory(Advanced)]_AdvancedCat("[ Advanced Cat]", Float) = 0
		[StyledMessage(Info, Use the Batching Support option when the object is statically batched. All vertex calculations are done in world space and features like Baked Pivots and Size options are not supported because the object pivot data is missing with static batching., _VertexDataMode, 1 , 2,10)]_BatchingMessage("# Batching Message", Float) = 0
		[ASEEnd][StyledToggle]_VertexDataMode("Enable Batching Support", Float) = 0
		[HideInInspector]_IsTVEShader("_IsTVEShader", Float) = 1
		[HideInInspector]_IsVersion("_IsVersion", Float) = 200
		[HideInInspector]_Color("_Color", Color) = (0,0,0,0)
		[HideInInspector]_MainTex("_MainTex", 2D) = "white" {}
		[HideInInspector]_MaxBoundsInfo("_MaxBoundsInfo", Vector) = (1,1,1,1)
		[HideInInspector]_VertexVariationMode("_VertexVariationMode", Float) = 0
		[HideInInspector]_vertex_pivot_mode("_vertex_pivot_mode", Float) = 0
		[HideInInspector]_render_normals_options("_render_normals_options", Vector) = (1,1,1,0)
		[HideInInspector]_material_batching("_material_batching", Float) = 0
		[HideInInspector][Enum(Main Mask,0,Detail Mask,1)]_MaskMode("_MaskMode", Float) = 0
		[HideInInspector]_OverlayContrast("_OverlayContrast", Float) = 0
		[HideInInspector]_ObjectOcclusionValue("_ObjectOcclusionValue", Float) = 0
		[HideInInspector]_ObjectSmoothnessValue("_ObjectSmoothnessValue", Float) = 0
		[HideInInspector]_ObjectMetallicValue("_ObjectMetallicValue", Float) = 0
		[HideInInspector]_OverlayVariation("_OverlayVariation", Float) = 0
		[HideInInspector]_GrassPerspectiveAngleValue("_GrassPerspectiveAngleValue", Float) = 0
		[HideInInspector]_GrassPerspectiveNoiseValue("_GrassPerspectiveNoiseValue", Float) = 0
		[HideInInspector]_GrassPerspectivePushValue("_GrassPerspectivePushValue", Float) = 0
		[HideInInspector]_SubsurfaceMinValue("_SubsurfaceMinValue", Float) = 0
		[HideInInspector]_SubsurfaceMaxValue("_SubsurfaceMaxValue", Float) = 0
		[HideInInspector]_render_mode("_render_mode", Float) = 0
		[HideInInspector]_render_normals("_render_normals", Float) = 0
		[HideInInspector]_render_blend("_render_blend", Float) = 0
		[HideInInspector]_render_priority("_render_priority", Float) = 0
		[HideInInspector]_render_premul("_render_premul", Float) = 0
		[HideInInspector]_IsGrassShader("_IsGrassShader", Float) = 1
		[HideInInspector]_IsStandardShader("_IsStandardShader", Float) = 1
		[HideInInspector]_IsAnyPathShader("_IsAnyPathShader", Float) = 1
		[HideInInspector]_IsLitShader("_IsLitShader", Float) = 1
		[HideInInspector]_render_cutoff("_render_cutoff", Float) = 0.5
		[HideInInspector]_render_cull("_render_cull", Float) = 0
		[HideInInspector]_render_src("_render_src", Float) = 1
		[HideInInspector]_render_dst("_render_dst", Float) = 0
		[HideInInspector]_render_zw("_render_zw", Float) = 1

		[HideInInspector] _RenderQueueType("Render Queue Type", Float) = 1
		//[HideInInspector] [ToggleUI] _AddPrecomputedVelocity("Add Precomputed Velocity", Float) = 1
		[HideInInspector] _StencilRef("Stencil Ref", Int) = 0
		[HideInInspector] _StencilWriteMask("Stencil Write Mask", Int) = 6
		[HideInInspector] _StencilRefDepth("Stencil Ref Depth", Int) = 8
		[HideInInspector] _StencilWriteMaskDepth("Stencil Write Mask Depth", Int) = 8
		[HideInInspector] _StencilRefMV("Stencil Ref MV", Int) = 40
		[HideInInspector] _StencilWriteMaskMV("Stencil Write Mask MV", Int) = 40
		[HideInInspector] _StencilRefDistortionVec("Stencil Ref Distortion Vec", Int) = 4
		[HideInInspector] _StencilWriteMaskDistortionVec("Stencil Write Mask Distortion Vec", Int) = 4
		[HideInInspector] _StencilWriteMaskGBuffer("Stencil Write Mask GBuffer", Int) = 14
		[HideInInspector] _StencilRefGBuffer("Stencil Ref GBuffer", Int) = 10
		[HideInInspector] _ZTestGBuffer("ZTest GBuffer", Int) = 4
		[HideInInspector] [ToggleUI] _RequireSplitLighting("Require Split Lighting", Float) = 0
		[HideInInspector] [ToggleUI] _ReceivesSSR("Receives SSR", Float) = 1
		[HideInInspector] _SurfaceType("Surface Type", Float) = 0
		[HideInInspector] _BlendMode("Blend Mode", Float) = 0
		[HideInInspector] _SrcBlend("Src Blend", Float) = 1
		[HideInInspector] _DstBlend("Dst Blend", Float) = 0
		[HideInInspector] _AlphaSrcBlend("Alpha Src Blend", Float) = 1
		[HideInInspector] _AlphaDstBlend("Alpha Dst Blend", Float) = 0
		[HideInInspector] [ToggleUI] _ZWrite("ZWrite", Float) = 1
		[HideInInspector] [ToggleUI] _TransparentZWrite("Transparent ZWrite", Float) = 1
		[HideInInspector] _CullMode("Cull Mode", Float) = 2
		[HideInInspector] _TransparentSortPriority("Transparent Sort Priority", Int) = 0
		[HideInInspector] [ToggleUI] _EnableFogOnTransparent("Enable Fog On Transparent", Float) = 1
		[HideInInspector] _CullModeForward("Cull Mode Forward", Float) = 2
		[HideInInspector] [Enum(Front, 1, Back, 2)] _TransparentCullMode("Transparent Cull Mode", Float) = 2
		[HideInInspector] _ZTestDepthEqualForOpaque("ZTest Depth Equal For Opaque", Int) = 4
		[HideInInspector] [Enum(UnityEngine.Rendering.CompareFunction)] _ZTestTransparent("ZTest Transparent", Float) = 4
		[HideInInspector] [ToggleUI] _TransparentBackfaceEnable("Transparent Backface Enable", Float) = 0
		[HideInInspector] [ToggleUI] _AlphaCutoffEnable("Alpha Cutoff Enable", Float) = 1
		[HideInInspector] [ToggleUI] _UseShadowThreshold("Use Shadow Threshold", Float) = 0
		[HideInInspector] [ToggleUI] _DoubleSidedEnable("Double Sided Enable", Float) = 1
		[HideInInspector] [Enum(Flip, 0, Mirror, 1, None, 2)] _DoubleSidedNormalMode("Double Sided Normal Mode", Float) = 2
		[HideInInspector] _DoubleSidedConstants("DoubleSidedConstants", Vector) = (1,1,-1,0)
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="HDRenderPipeline" "RenderType"="Opaque" "Queue"="Geometry" }

		HLSLINCLUDE
		#pragma target 4.5
		#pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
		#pragma multi_compile_instancing
		#pragma instancing_options renderinglayer

		struct GlobalSurfaceDescription // GBuffer Forward META TransparentBackface
		{
			float3 Albedo;
			float3 Normal;
			float3 BentNormal;
			float3 Specular;
			float CoatMask;
			float Metallic;
			float3 Emission;
			float Smoothness;
			float Occlusion;
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float AlphaClipThresholdDepthPrepass;
			float AlphaClipThresholdDepthPostpass;
			float SpecularAAScreenSpaceVariance;
			float SpecularAAThreshold;
			float SpecularOcclusion;
			float DepthOffset;
			//Refraction
			float RefractionIndex;
			float3 RefractionColor;
			float RefractionDistance;
			//SSS/Translucent
			float Thickness;
			float SubsurfaceMask;
			float DiffusionProfile;
			//Anisotropy
			float Anisotropy;
			float3 Tangent;
			//Iridescent
			float IridescenceMask;
			float IridescenceThickness;
			//BakedGI
			float3 BakedGI;
			float3 BakedBackGI;
		};

		struct AlphaSurfaceDescription // ShadowCaster
		{
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float DepthOffset;
		};

		struct SceneSurfaceDescription // SceneSelection
		{
			float Alpha;
			float AlphaClipThreshold;
			float DepthOffset;
		};

		struct PrePassSurfaceDescription // DepthPrePass
		{
			float Alpha;
			float AlphaClipThresholdDepthPrepass;
			float DepthOffset;
		};

		struct PostPassSurfaceDescription //DepthPostPass
		{
			float Alpha;
			float AlphaClipThresholdDepthPostpass;
			float DepthOffset;
		};

		struct SmoothSurfaceDescription // MotionVectors DepthOnly
		{
			float3 Normal;
			float Smoothness;
			float Alpha;
			float AlphaClipThreshold;
			float DepthOffset;
		};

		struct DistortionSurfaceDescription //Distortion
		{
			float Alpha;
			float2 Distortion;
			float DistortionBlur;
			float AlphaClipThreshold;
		};

		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}
		
		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlaneASE (float3 pos, float4 plane)
		{
			return dot (float4(pos,1.0f), plane);
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlaneASE(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlaneASE(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlaneASE(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlaneASE(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		ENDHLSL
		
		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="GBuffer" }

			Cull [_CullMode]
			ZTest [_ZTestGBuffer]

			Stencil
			{
				Ref [_StencilRefGBuffer]
				WriteMask [_StencilWriteMaskGBuffer]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			HLSLPROGRAM

			#define ASE_NEED_CULLFACE 1
			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#pragma multi_compile _ DOTS_INSTANCING_ON
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 70201
			#if !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif //ASE_NEED_CULLFACE


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#if !defined(DEBUG_DISPLAY) && defined(_ALPHATEST_ON)
			#define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
			#endif

			#define SHADERPASS SHADERPASS_GBUFFER
			#pragma multi_compile _ DEBUG_DISPLAY
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile DECALS_OFF DECALS_3RT DECALS_4RT
			#pragma multi_compile _ LIGHT_LAYERS

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_VFACE
			#pragma shader_feature_local TVE_VERTEX_DATA_OBJECT TVE_VERTEX_DATA_WORLD TVE_VERTEX_DATA_BATCHED
			  
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			    
			#define TVE_IS_GRASS_SHADER
			#define TVE_PIVOT_DATA_BAKED


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 interp03 : TEXCOORD3;
				float4 interp04 : TEXCOORD4;
				float4 ase_color : COLOR;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			CBUFFER_START( UnityPerMaterial )
			half4 _NoiseTintOne;
			half4 _GradientColorOne;
			half4 _NoiseTintTwo;
			half4 _GradientColorTwo;
			float4 _MaxBoundsInfo;
			float4 _Color;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _MotionHighlightColor;
			float4 _LocalColors;
			half4 _SubsurfaceColor;
			float4 _SubsurfaceDiffusion_asset;
			half4 _VertexOcclusionColor;
			half3 _render_normals_options;
			float _MotionVariation_32;
			half _BatchingMessage;
			half _IsLitShader;
			half _IsStandardShader;
			half _PerspectiveAngleValue;
			half _PerspectiveNoiseValue;
			half _PerspectiveCat;
			half _Banner;
			half _IsGrassShader;
			half _Motion_10;
			half _Motion_Interaction;
			half _PerspectivePushValue;
			half _LocalSize;
			half _vertex_pivot_mode;
			half _GlobalSize;
			half _GradientMinValue;
			half _VertexDataMode;
			half _VertexMotionMode;
			half _VertexMotionSpace;
			half _VertexCat;
			half _Motion_32;
			half _VertexPivotMode;
			half _GlobalSizeFade;
			half _IsAnyPathShader;
			half _GradientCat;
			half _LeavesVariationValue;
			half _MainOcclusionValue;
			half _GlobalWetness;
			half _MainSmoothnessValue;
			half _OcclusionCat;
			half _VertexOcclusionValue;
			half _render_premul;
			half _OverlayVariationValue;
			half _GlobalOverlay;
			half _OverlayContrastValue;
			half _SubsurfaceViewValue;
			half _GradientMaxValue;
			half _SubsurfaceAngleValue;
			half _SubsurfaceCat;
			half _GlobalHealthiness;
			half _SubsurfaceValue;
			half _SubsurfaceLightValue;
			half _ColorsMaskValue;
			half _GlobalColors;
			half _NoiseMaxValue;
			half _NoiseMinValue;
			half _MoiseCat;
			half _NoiseScaleValue;
			half _DetailMapsMode;
			half _SubsurfaceMaskValue;
			half _DetailTypeMode;
			half _DetailCat;
			half _ObjectDataMessage;
			half _IsTVEShader;
			float _MotionScale_32;
			half _InteractionVariation;
			half _MotionAmplitude_30;
			float _material_batching;
			half _MaskMode;
			float _ObjectMetallicValue;
			float _render_normals;
			float _GrassPerspectiveNoiseValue;
			float _ObjectSmoothnessValue;
			float _render_blend;
			float _render_mode;
			float _render_priority;
			float _OverlayVariation;
			float _OverlayContrast;
			float _GrassPerspectivePushValue;
			float _ObjectOcclusionValue;
			float _SubsurfaceMinValue;
			float _GrassPerspectiveAngleValue;
			float _SubsurfaceMaxValue;
			half _GlobalSpace;
			half _DetailSpace;
			half _render_dst;
			half _render_src;
			half _render_zw;
			half _render_cutoff;
			half _render_cull;
			half _Cutoff;
			half _MotionVariation_20;
			half _VertexVariationMode;
			half _RenderingCat;
			half _GlobalLeaves;
			half _AdvancedCat;
			float _MotionScale_20;
			half _MainCat;
			float _MotionVariation_30;
			half _RenderMode;
			half _MotionAmplitude_20;
			half _MotionVariation_10;
			half _WorldDataMessage;
			float _MotionSpeed_10;
			half _DetailMode;
			half _RenderPriority;
			half _RenderBlend;
			half _GlobalCat;
			half _RenderZWrite;
			half _RenderCull;
			float _MotionSpeed_30;
			half _PivotsMessage;
			half _MotionAmplitude_10;
			float _MotionScale_10;
			float _MotionSpeed_20;
			half _RenderClip;
			half _InteractionAmplitude;
			float _MotionSpeed_32;
			float _MotionScale_30;
			half _RenderNormals;
			half _MainNormalValue;
			half _IsVersion;
			half _MotionAmplitude_32;
			half _LocalLeaves;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _MainTex;
			sampler2D TVE_MotionTex;
			half4 TVE_VolumeCoord;
			sampler2D TVE_MotionTex_Vegetation;
			sampler2D TVE_MotionTex_Grass;
			sampler2D TVE_MotionTex_Objects;
			sampler2D TVE_MotionTex_User;
			half TVE_WindPower;
			sampler2D TVE_NoiseTex;
			float2 TVE_NoiseSpeed_Vegetation;
			float2 TVE_NoiseSpeed_Grass;
			half TVE_NoiseSize_Vegetation;
			half TVE_NoiseSize_Grass;
			half TVE_NoiseContrast;
			half TVE_WindMode;
			half TVE_SizeFadeEnd;
			half TVE_SizeFadeStart;
			sampler2D TVE_ExtrasTex;
			sampler2D TVE_ExtrasTex_Vegetation;
			sampler2D TVE_ExtrasTex_Grass;
			sampler2D TVE_ExtrasTex_Objects;
			sampler2D TVE_ExtrasTex_User;
			sampler2D _NoiseTex;
			SAMPLER(sampler_NoiseTex);
			sampler2D _MainAlbedoTex;
			SAMPLER(samplerTVE_NoiseTex);
			half TVE_NoiseHighlight;
			sampler2D TVE_ColorsTex;
			sampler2D TVE_ColorsTex_Vegetation;
			sampler2D TVE_ColorsTex_Grass;
			sampler2D TVE_ColorsTex_Objects;
			sampler2D TVE_ColorsTex_User;
			float4 TVE_MainLightParams;
			half3 TVE_MainLightDirection;
			half4 TVE_OverlayColor;
			sampler2D _MainNormalTex;
			SAMPLER(sampler_MainNormalTex);
			half TVE_OverlayIntensity;
			sampler2D _MainMaskTex;
			SAMPLER(sampler_MainMaskTex);
			half TVE_OverlaySmoothness;
			float TVE_Wetness;
			SAMPLER(sampler_MainAlbedoTex);


			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			
			half4 USE_BUFFERS( half4 Legacy, half4 Vegetation, half4 Grass, half4 Objects, half4 Custom )
			{
				#if defined (TVE_IS_VEGETATION_SHADER)
				return Vegetation;
				#elif defined (TVE_IS_GRASS_SHADER)
				return Grass;
				#elif defined (TVE_IS_OBJECT_SHADER)
				return Objects;
				#elif defined (TVE_IS_CUSTOM_SHADER)
				return Custom;
				#else
				return Legacy;
				#endif
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.baseColor =					surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif
				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness =					surfaceDescription.Thickness;
				#endif
				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;
				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData( posInput, surfaceDescription.Alpha );
					ApplyDecalToSurfaceData( decalSurfaceData, surfaceData );
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				//#ifdef _ALPHATEST_ON
				//DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				//#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				#ifdef _ASE_BAKEDGI
				builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif
				#ifdef _ASE_BAKEDBACKGI
				builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

				builtinData.emissiveColor = surfaceDescription.Emission;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
				builtinData.distortion = surfaceDescription.Distortion;
				builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
				builtinData.distortion = float2(0.0, 0.0);
				builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				half3 _Vector1 = half3(0,0,0);
				half3 Off19_g32361 = _Vector1;
				float3 appendResult2827_g31431 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				half3 Mesh_PivotsData2831_g31431 = ( appendResult2827_g31431 * _VertexPivotMode );
				half3 On20_g32361 = Mesh_PivotsData2831_g31431;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32361 = On20_g32361;
				#else
				float3 staticSwitch14_g32361 = Off19_g32361;
				#endif
				half3 ObjectData20_g32362 = staticSwitch14_g32361;
				half3 WorldData19_g32362 = Off19_g32361;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32362 = WorldData19_g32362;
				#else
				float3 staticSwitch14_g32362 = ObjectData20_g32362;
				#endif
				#ifdef TVE_VERTEX_DATA_WORLD
				float3 staticSwitch14_g32384 = _Vector1;
				#else
				float3 staticSwitch14_g32384 = staticSwitch14_g32362;
				#endif
				half3 Mesh_PivotsOS2291_g31431 = staticSwitch14_g32384;
				float3 temp_output_2283_0_g31431 = ( inputMesh.positionOS - Mesh_PivotsOS2291_g31431 );
				half3 VertexPos40_g32429 = temp_output_2283_0_g31431;
				float3 appendResult74_g32429 = (float3(VertexPos40_g32429.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g32429 = appendResult74_g32429;
				float3 break84_g32429 = VertexPos40_g32429;
				float3 appendResult81_g32429 = (float3(0.0 , break84_g32429.y , break84_g32429.z));
				half3 VertexPosOtherAxis82_g32429 = appendResult81_g32429;
				float ObjectData20_g32403 = 3.14;
				float Bounds_Height374_g31431 = _MaxBoundsInfo.y;
				float WorldData19_g32403 = ( Bounds_Height374_g31431 * 3.14 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32403 = WorldData19_g32403;
				#else
				float staticSwitch14_g32403 = ObjectData20_g32403;
				#endif
				float Motion_Max_Bending1133_g31431 = staticSwitch14_g32403;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32396 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32399 = localObjectPosition_UNITY_MATRIX_M14_g32396;
				float4 transform68_g32396 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32396.xyz = GetAbsolutePositionWS((transform68_g32396).xyz);
				float3 appendResult93_g32396 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float4 transform62_g32396 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult93_g32396 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32396.xyz = GetAbsolutePositionWS((transform62_g32396).xyz);
				float3 ObjectPositionWithPivots28_g32396 = ( (transform68_g32396).xyz - (transform62_g32396).xyz );
				half3 On20_g32399 = ObjectPositionWithPivots28_g32396;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32399 = On20_g32399;
				#else
				float3 staticSwitch14_g32399 = Off19_g32399;
				#endif
				half3 ObjectData20_g32400 = staticSwitch14_g32399;
				half3 WorldData19_g32400 = Off19_g32399;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32400 = WorldData19_g32400;
				#else
				float3 staticSwitch14_g32400 = ObjectData20_g32400;
				#endif
				float3 temp_output_66_0_g32396 = staticSwitch14_g32400;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32396 = ( temp_output_66_0_g32396 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32396 = temp_output_66_0_g32396;
				#endif
				half3 ObjectData20_g32401 = staticSwitch13_g32396;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				half3 WorldData19_g32401 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32401 = WorldData19_g32401;
				#else
				float3 staticSwitch14_g32401 = ObjectData20_g32401;
				#endif
				float2 temp_output_39_38_g32394 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32401).xz ) );
				half4 Legacy33_g32402 = tex2Dlod( TVE_MotionTex, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Vegetation33_g32402 = tex2Dlod( TVE_MotionTex_Vegetation, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Grass33_g32402 = tex2Dlod( TVE_MotionTex_Grass, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Objects33_g32402 = tex2Dlod( TVE_MotionTex_Objects, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Custom33_g32402 = tex2Dlod( TVE_MotionTex_User, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 localUSE_BUFFERS33_g32402 = USE_BUFFERS( Legacy33_g32402 , Vegetation33_g32402 , Grass33_g32402 , Objects33_g32402 , Custom33_g32402 );
				float4 break322_g32350 = localUSE_BUFFERS33_g32402;
				half Wind_Power369_g32350 = saturate( ( (break322_g32350.z*2.0 + -1.0) + TVE_WindPower ) );
				half Wind_Power_103106_g31431 = Wind_Power369_g32350;
				float3 appendResult323_g32350 = (float3(break322_g32350.x , 0.0 , break322_g32350.y));
				float3 temp_output_324_0_g32350 = (appendResult323_g32350*2.0 + -1.0);
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				float3 temp_output_339_0_g32350 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_324_0_g32350 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Wind_DirectionOS39_g31431 = (temp_output_339_0_g32350).xz;
				half Motion_Use1056_g31431 = _Motion_10;
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch160_g32370 = TVE_NoiseSpeed_Grass;
				#else
				float2 staticSwitch160_g32370 = TVE_NoiseSpeed_Vegetation;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g32372 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32375 = localObjectPosition_UNITY_MATRIX_M14_g32372;
				float4 transform68_g32372 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32372.xyz = GetAbsolutePositionWS((transform68_g32372).xyz);
				float3 appendResult95_g32372 = (float3(inputMesh.ase_texcoord.z , 0.0 , inputMesh.ase_texcoord.w));
				float4 transform62_g32372 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32372 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32372.xyz = GetAbsolutePositionWS((transform62_g32372).xyz);
				float3 ObjectPositionWithPivots28_g32372 = ( (transform68_g32372).xyz - (transform62_g32372).xyz );
				half3 On20_g32375 = ObjectPositionWithPivots28_g32372;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32375 = On20_g32375;
				#else
				float3 staticSwitch14_g32375 = Off19_g32375;
				#endif
				half3 ObjectData20_g32376 = staticSwitch14_g32375;
				half3 WorldData19_g32376 = Off19_g32375;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32376 = WorldData19_g32376;
				#else
				float3 staticSwitch14_g32376 = ObjectData20_g32376;
				#endif
				float3 temp_output_66_0_g32372 = staticSwitch14_g32376;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32372 = ( temp_output_66_0_g32372 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32372 = temp_output_66_0_g32372;
				#endif
				half3 ObjectData20_g32371 = staticSwitch13_g32372;
				half3 WorldData19_g32371 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32371 = WorldData19_g32371;
				#else
				float3 staticSwitch14_g32371 = ObjectData20_g32371;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch164_g32370 = (ase_worldPos).xz;
				#else
				float2 staticSwitch164_g32370 = (staticSwitch14_g32371).xz;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float staticSwitch161_g32370 = TVE_NoiseSize_Grass;
				#else
				float staticSwitch161_g32370 = TVE_NoiseSize_Vegetation;
				#endif
				float2 panner73_g32370 = ( _TimeParameters.x * staticSwitch160_g32370 + ( staticSwitch164_g32370 * staticSwitch161_g32370 ));
				float4 tex2DNode75_g32370 = tex2Dlod( TVE_NoiseTex, float4( panner73_g32370, 0, 0.0) );
				float4 saferPower77_g32370 = max( abs( tex2DNode75_g32370 ) , 0.0001 );
				float4 temp_cast_9 = (TVE_NoiseContrast).xxxx;
				float4 break142_g32370 = pow( saferPower77_g32370 , temp_cast_9 );
				half Global_NoiseTex_R34_g31431 = break142_g32370.r;
				half Input_Speed62_g32427 = _MotionSpeed_10;
				float mulTime373_g32427 = _TimeParameters.x * Input_Speed62_g32427;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32409 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32412 = localObjectPosition_UNITY_MATRIX_M14_g32409;
				float4 transform68_g32409 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32409.xyz = GetAbsolutePositionWS((transform68_g32409).xyz);
				float3 appendResult95_g32409 = (float3(inputMesh.ase_texcoord.z , 0.0 , inputMesh.ase_texcoord.w));
				float4 transform62_g32409 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32409 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32409.xyz = GetAbsolutePositionWS((transform62_g32409).xyz);
				float3 ObjectPositionWithPivots28_g32409 = ( (transform68_g32409).xyz - (transform62_g32409).xyz );
				half3 On20_g32412 = ObjectPositionWithPivots28_g32409;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32412 = On20_g32412;
				#else
				float3 staticSwitch14_g32412 = Off19_g32412;
				#endif
				half3 ObjectData20_g32413 = staticSwitch14_g32412;
				half3 WorldData19_g32413 = Off19_g32412;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32413 = WorldData19_g32413;
				#else
				float3 staticSwitch14_g32413 = ObjectData20_g32413;
				#endif
				float3 temp_output_66_0_g32409 = staticSwitch14_g32413;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32409 = ( temp_output_66_0_g32409 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32409 = temp_output_66_0_g32409;
				#endif
				float3 break9_g32409 = staticSwitch13_g32409;
				half Variation_Complex102_g32406 = frac( ( inputMesh.ase_color.r + ( break9_g32409.x + break9_g32409.z ) ) );
				float ObjectData20_g32408 = Variation_Complex102_g32406;
				half Variation_Simple105_g32406 = inputMesh.ase_color.r;
				float WorldData19_g32408 = Variation_Simple105_g32406;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32408 = WorldData19_g32408;
				#else
				float staticSwitch14_g32408 = ObjectData20_g32408;
				#endif
				half Variation3073_g31431 = staticSwitch14_g32408;
				half Motion_Variation284_g32427 = ( _MotionVariation_10 * Variation3073_g31431 );
				float2 appendResult344_g32427 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 Motion_Scale287_g32427 = ( _MotionScale_10 * appendResult344_g32427 );
				half2 Sine_MinusOneToOne281_g32427 = sin( ( mulTime373_g32427 + Motion_Variation284_g32427 + Motion_Scale287_g32427 ) );
				float2 temp_cast_11 = (1.0).xx;
				half Input_Turbulence327_g32427 = Global_NoiseTex_R34_g31431;
				float2 lerpResult321_g32427 = lerp( Sine_MinusOneToOne281_g32427 , temp_cast_11 , Input_Turbulence327_g32427);
				half2 Motion_Bending2258_g31431 = ( ( _MotionAmplitude_10 * Motion_Max_Bending1133_g31431 ) * Wind_Power_103106_g31431 * Wind_DirectionOS39_g31431 * Motion_Use1056_g31431 * Global_NoiseTex_R34_g31431 * lerpResult321_g32427 );
				half Motion_UseInteraction2097_g31431 = _Motion_Interaction;
				half Motion_InteractionMask66_g31431 = break322_g32350.w;
				float lerpResult3307_g31431 = lerp( 1.0 , Variation3073_g31431 , _InteractionVariation);
				half2 Motion_Interaction53_g31431 = ( _InteractionAmplitude * Motion_Max_Bending1133_g31431 * Motion_UseInteraction2097_g31431 * Motion_InteractionMask66_g31431 * Motion_InteractionMask66_g31431 * Wind_DirectionOS39_g31431 * lerpResult3307_g31431 );
				float2 lerpResult109_g31431 = lerp( Motion_Bending2258_g31431 , Motion_Interaction53_g31431 , Motion_InteractionMask66_g31431);
				half Mesh_Motion_182_g31431 = inputMesh.ase_texcoord3.x;
				float2 break143_g31431 = ( lerpResult109_g31431 * Mesh_Motion_182_g31431 );
				half Motion_Z190_g31431 = break143_g31431.y;
				half Angle44_g32429 = Motion_Z190_g31431;
				half3 VertexPos40_g32421 = ( VertexPosRotationAxis50_g32429 + ( VertexPosOtherAxis82_g32429 * cos( Angle44_g32429 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g32429 ) * sin( Angle44_g32429 ) ) );
				float3 appendResult74_g32421 = (float3(0.0 , 0.0 , VertexPos40_g32421.z));
				half3 VertexPosRotationAxis50_g32421 = appendResult74_g32421;
				float3 break84_g32421 = VertexPos40_g32421;
				float3 appendResult81_g32421 = (float3(break84_g32421.x , break84_g32421.y , 0.0));
				half3 VertexPosOtherAxis82_g32421 = appendResult81_g32421;
				half Motion_X216_g31431 = break143_g31431.x;
				half Angle44_g32421 = -Motion_X216_g31431;
				half Motion_Scale321_g32419 = ( _MotionScale_32 * 10.0 );
				half Input_Speed62_g32419 = _MotionSpeed_32;
				float mulTime349_g32419 = _TimeParameters.x * Input_Speed62_g32419;
				float Motion_Variation330_g32419 = ( _MotionVariation_32 * inputMesh.ase_color.r );
				float Bounds_Radius121_g31431 = _MaxBoundsInfo.x;
				half Input_Amplitude58_g32419 = ( _MotionAmplitude_32 * Bounds_Radius121_g31431 * 0.1 );
				float3 appendResult345_g32419 = (float3(inputMesh.ase_color.r , ( 1.0 - inputMesh.ase_color.r ) , inputMesh.ase_color.r));
				half Global_NoiseTex_B132_g31431 = break142_g32370.b;
				half Mesh_Motion_3144_g31431 = inputMesh.ase_texcoord3.z;
				half Motion_Use322013_g31431 = _Motion_32;
				float lerpResult376_g32350 = lerp( 0.1 , 1.0 , Wind_Power369_g32350);
				half Wind_Power_323115_g31431 = lerpResult376_g32350;
				half3 Motion_Flutter263_g31431 = ( ( sin( ( ( ( ase_worldPos.x + ase_worldPos.y + ase_worldPos.z ) * Motion_Scale321_g32419 ) + mulTime349_g32419 + Motion_Variation330_g32419 ) ) * Input_Amplitude58_g32419 * appendResult345_g32419 ) * ( ( Global_NoiseTex_R34_g31431 + Global_NoiseTex_B132_g31431 ) * Mesh_Motion_3144_g31431 * Motion_Use322013_g31431 * Wind_Power_323115_g31431 ) );
				half Wind_Mode3167_g31431 = TVE_WindMode;
				float3 lerpResult3168_g31431 = lerp( inputMesh.positionOS , ( ( VertexPosRotationAxis50_g32421 + ( VertexPosOtherAxis82_g32421 * cos( Angle44_g32421 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g32421 ) * sin( Angle44_g32421 ) ) ) + Motion_Flutter263_g31431 ) , Wind_Mode3167_g31431);
				float3 Vertex_Motion_Object833_g31431 = lerpResult3168_g31431;
				float3 appendResult2043_g31431 = (float3(Motion_X216_g31431 , 0.0 , Motion_Z190_g31431));
				float3 lerpResult3173_g31431 = lerp( inputMesh.positionOS , ( ( inputMesh.positionOS + appendResult2043_g31431 ) + Motion_Flutter263_g31431 ) , Wind_Mode3167_g31431);
				float3 Vertex_Motion_World1118_g31431 = lerpResult3173_g31431;
				float3 temp_output_3331_0_g31431 = ( ( _VertexCat * _VertexMotionSpace * _VertexMotionMode * _VertexDataMode ) + Vertex_Motion_World1118_g31431 );
				#if defined(TVE_VERTEX_DATA_OBJECT)
				float3 staticSwitch3312_g31431 = Vertex_Motion_Object833_g31431;
				#elif defined(TVE_VERTEX_DATA_WORLD)
				float3 staticSwitch3312_g31431 = temp_output_3331_0_g31431;
				#elif defined(TVE_VERTEX_DATA_BATCHED)
				float3 staticSwitch3312_g31431 = temp_output_3331_0_g31431;
				#else
				float3 staticSwitch3312_g31431 = Vertex_Motion_Object833_g31431;
				#endif
				half3 ObjectData20_g32349 = staticSwitch3312_g31431;
				half3 WorldData19_g32349 = Vertex_Motion_World1118_g31431;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32349 = WorldData19_g32349;
				#else
				float3 staticSwitch14_g32349 = ObjectData20_g32349;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g32365 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32368 = localObjectPosition_UNITY_MATRIX_M14_g32365;
				float4 transform68_g32365 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32365.xyz = GetAbsolutePositionWS((transform68_g32365).xyz);
				float3 appendResult93_g32365 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float4 transform62_g32365 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult93_g32365 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32365.xyz = GetAbsolutePositionWS((transform62_g32365).xyz);
				float3 ObjectPositionWithPivots28_g32365 = ( (transform68_g32365).xyz - (transform62_g32365).xyz );
				half3 On20_g32368 = ObjectPositionWithPivots28_g32365;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32368 = On20_g32368;
				#else
				float3 staticSwitch14_g32368 = Off19_g32368;
				#endif
				half3 ObjectData20_g32369 = staticSwitch14_g32368;
				half3 WorldData19_g32369 = Off19_g32368;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32369 = WorldData19_g32369;
				#else
				float3 staticSwitch14_g32369 = ObjectData20_g32369;
				#endif
				float3 temp_output_66_0_g32365 = staticSwitch14_g32369;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32365 = ( temp_output_66_0_g32365 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32365 = temp_output_66_0_g32365;
				#endif
				float temp_output_7_0_g32416 = TVE_SizeFadeEnd;
				float ObjectData20_g32364 = saturate( ( ( ( distance( _WorldSpaceCameraPos , staticSwitch13_g32365 ) * _GlobalSizeFade ) - temp_output_7_0_g32416 ) / ( TVE_SizeFadeStart - temp_output_7_0_g32416 ) ) );
				float WorldData19_g32364 = 1.0;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32364 = WorldData19_g32364;
				#else
				float staticSwitch14_g32364 = ObjectData20_g32364;
				#endif
				float Vertex_SizeFade1740_g31431 = staticSwitch14_g32364;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32355 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32358 = localObjectPosition_UNITY_MATRIX_M14_g32355;
				float4 transform68_g32355 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32355.xyz = GetAbsolutePositionWS((transform68_g32355).xyz);
				float3 appendResult95_g32355 = (float3(inputMesh.ase_texcoord.z , 0.0 , inputMesh.ase_texcoord.w));
				float4 transform62_g32355 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32355 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32355.xyz = GetAbsolutePositionWS((transform62_g32355).xyz);
				float3 ObjectPositionWithPivots28_g32355 = ( (transform68_g32355).xyz - (transform62_g32355).xyz );
				half3 On20_g32358 = ObjectPositionWithPivots28_g32355;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32358 = On20_g32358;
				#else
				float3 staticSwitch14_g32358 = Off19_g32358;
				#endif
				half3 ObjectData20_g32359 = staticSwitch14_g32358;
				half3 WorldData19_g32359 = Off19_g32358;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32359 = WorldData19_g32359;
				#else
				float3 staticSwitch14_g32359 = ObjectData20_g32359;
				#endif
				float3 temp_output_66_0_g32355 = staticSwitch14_g32359;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32355 = ( temp_output_66_0_g32355 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32355 = temp_output_66_0_g32355;
				#endif
				half3 ObjectData20_g32354 = staticSwitch13_g32355;
				half3 WorldData19_g32354 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32354 = WorldData19_g32354;
				#else
				float3 staticSwitch14_g32354 = ObjectData20_g32354;
				#endif
				float2 temp_output_43_38_g32352 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32354).xz ) );
				half4 Legacy33_g32353 = tex2Dlod( TVE_ExtrasTex, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Vegetation33_g32353 = tex2Dlod( TVE_ExtrasTex_Vegetation, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Grass33_g32353 = tex2Dlod( TVE_ExtrasTex_Grass, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Objects33_g32353 = tex2Dlod( TVE_ExtrasTex_Objects, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Custom33_g32353 = tex2Dlod( TVE_ExtrasTex_User, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 localUSE_BUFFERS33_g32353 = USE_BUFFERS( Legacy33_g32353 , Vegetation33_g32353 , Grass33_g32353 , Objects33_g32353 , Custom33_g32353 );
				float4 break49_g32352 = localUSE_BUFFERS33_g32353;
				half Global_ExtrasTex_G305_g31431 = break49_g32352.y;
				float lerpResult346_g31431 = lerp( 1.0 , Global_ExtrasTex_G305_g31431 , _GlobalSize);
				float ObjectData20_g32363 = ( lerpResult346_g31431 * _LocalSize );
				float WorldData19_g32363 = 1.0;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32363 = WorldData19_g32363;
				#else
				float staticSwitch14_g32363 = ObjectData20_g32363;
				#endif
				half Vertex_Size1741_g31431 = staticSwitch14_g32363;
				float3 normalizeResult2696_g31431 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 break2709_g31431 = cross( normalizeResult2696_g31431 , half3(0,1,0) );
				float3 appendResult2710_g31431 = (float3(-break2709_g31431.z , 0.0 , break2709_g31431.x));
				float3 appendResult2667_g31431 = (float3(inputMesh.ase_color.r , 0.5 , inputMesh.ase_color.r));
				float3 normalizeResult2210_g31431 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float dotResult2212_g31431 = dot( normalizeResult2210_g31431 , float3(0,1,0) );
				half Mask_HView2656_g31431 = abs( dotResult2212_g31431 );
				float saferPower2652_g31431 = max( Mask_HView2656_g31431 , 0.0001 );
				half3 Grass_Coverage2661_g31431 = ( ( ( mul( GetWorldToObjectMatrix(), float4( appendResult2710_g31431 , 0.0 ) ).xyz * ( _PerspectivePushValue + _PerspectiveCat ) ) + ( (appendResult2667_g31431*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * inputMesh.ase_color.a * pow( saferPower2652_g31431 , _PerspectiveAngleValue ) );
				float3 Final_VertexPosition890_g31431 = ( ( staticSwitch14_g32349 * Vertex_SizeFade1740_g31431 * Vertex_Size1741_g31431 ) + Mesh_PivotsOS2291_g31431 + Grass_Coverage2661_g31431 );
				
				half2 Noise_UVs3274_g31431 = ( (ase_worldPos).xz * ( ( _NoiseScaleValue * 0.1 ) + _MoiseCat ) );
				float temp_output_7_0_g32314 = _NoiseMinValue;
				half Noise_Mask3162_g31431 = saturate( ( ( tex2Dlod( _NoiseTex, float4( Noise_UVs3274_g31431, 0, 0.0) ).r - temp_output_7_0_g32314 ) / ( _NoiseMaxValue - temp_output_7_0_g32314 ) ) );
				float4 lerpResult2800_g31431 = lerp( _NoiseTintTwo , _NoiseTintOne , Noise_Mask3162_g31431);
				half3 Noise_Tint2802_g31431 = (lerpResult2800_g31431).rgb;
				float3 vertexToFrag3225_g31431 = Noise_Tint2802_g31431;
				outputPackedVaryingsMeshToPS.ase_texcoord5.xyz = vertexToFrag3225_g31431;
				half Global_NoiseTex_H2869_g31431 = pow( abs( tex2DNode75_g32370.r ) , TVE_NoiseHighlight );
				half3 Highlight_Tint3231_g31431 = ( ( (_MotionHighlightColor).rgb * Global_NoiseTex_H2869_g31431 * Wind_Power_103106_g31431 * Wind_Mode3167_g31431 * inputMesh.ase_color.r ) + float3( 1,1,1 ) );
				float3 vertexToFrag3252_g31431 = Highlight_Tint3231_g31431;
				outputPackedVaryingsMeshToPS.ase_texcoord7.xyz = vertexToFrag3252_g31431;
				
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;
				outputPackedVaryingsMeshToPS.ase_texcoord6 = inputMesh.ase_texcoord;
				outputPackedVaryingsMeshToPS.ase_texcoord8 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord5.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord7.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Final_VertexPosition890_g31431;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz = normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.interp03.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.interp04.xyzw = inputMesh.uv2;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput,
						OUTPUT_GBUFFER(outGBuffer)
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
						)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				float3 positionRWS = packedInput.interp00.xyz;
				float3 normalWS = packedInput.interp01.xyz;
				float4 tangentWS = packedInput.interp02.xyzw;

				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);
				input.texCoord1 = packedInput.interp03.xyzw;
				input.texCoord2 = packedInput.interp04.xyzw;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);
				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);
				SurfaceData surfaceData;
				BuiltinData builtinData;

				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float temp_output_7_0_g32317 = _GradientMinValue;
				float4 lerpResult2779_g31431 = lerp( _GradientColorTwo , _GradientColorOne , saturate( ( ( packedInput.ase_color.a - temp_output_7_0_g32317 ) / ( ( _GradientMaxValue + _GradientCat ) - temp_output_7_0_g32317 ) ) ));
				half3 Gradient_Tint2784_g31431 = (lerpResult2779_g31431).rgb;
				float3 vertexToFrag3225_g31431 = packedInput.ase_texcoord5.xyz;
				half2 Main_UVs15_g31431 = ( ( packedInput.ase_texcoord6.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g31431 = tex2D( _MainAlbedoTex, Main_UVs15_g31431 );
				float4 temp_output_51_0_g31431 = ( _MainColor * tex2DNode29_g31431 );
				half3 Main_AlbedoRaw99_g31431 = (temp_output_51_0_g31431).rgb;
				float3 vertexToFrag3252_g31431 = packedInput.ase_texcoord7.xyz;
				half3 Main_AlbedoTinted2808_g31431 = ( Gradient_Tint2784_g31431 * vertexToFrag3225_g31431 * Main_AlbedoRaw99_g31431 * vertexToFrag3252_g31431 );
				float3 localObjectPosition_UNITY_MATRIX_M14_g32386 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32389 = localObjectPosition_UNITY_MATRIX_M14_g32386;
				float4 transform68_g32386 = mul(GetObjectToWorldMatrix(),packedInput.ase_texcoord8);
				transform68_g32386.xyz = GetAbsolutePositionWS((transform68_g32386).xyz);
				float3 appendResult95_g32386 = (float3(packedInput.ase_texcoord6.z , 0.0 , packedInput.ase_texcoord6.w));
				float4 transform62_g32386 = mul(GetObjectToWorldMatrix(),float4( ( packedInput.ase_texcoord8.xyz - ( appendResult95_g32386 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32386.xyz = GetAbsolutePositionWS((transform62_g32386).xyz);
				float3 ObjectPositionWithPivots28_g32386 = ( (transform68_g32386).xyz - (transform62_g32386).xyz );
				half3 On20_g32389 = ObjectPositionWithPivots28_g32386;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32389 = On20_g32389;
				#else
				float3 staticSwitch14_g32389 = Off19_g32389;
				#endif
				half3 ObjectData20_g32390 = staticSwitch14_g32389;
				half3 WorldData19_g32390 = Off19_g32389;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32390 = WorldData19_g32390;
				#else
				float3 staticSwitch14_g32390 = ObjectData20_g32390;
				#endif
				float3 temp_output_66_0_g32386 = staticSwitch14_g32390;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32386 = ( temp_output_66_0_g32386 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32386 = temp_output_66_0_g32386;
				#endif
				half3 ObjectData20_g32392 = staticSwitch13_g32386;
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				half3 WorldData19_g32392 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32392 = WorldData19_g32392;
				#else
				float3 staticSwitch14_g32392 = ObjectData20_g32392;
				#endif
				float2 temp_output_35_38_g32385 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32392).xz ) );
				half4 Legacy33_g32391 = tex2D( TVE_ColorsTex, temp_output_35_38_g32385 );
				half4 Vegetation33_g32391 = tex2D( TVE_ColorsTex_Vegetation, temp_output_35_38_g32385 );
				half4 Grass33_g32391 = tex2D( TVE_ColorsTex_Grass, temp_output_35_38_g32385 );
				half4 Objects33_g32391 = tex2D( TVE_ColorsTex_Objects, temp_output_35_38_g32385 );
				half4 Custom33_g32391 = tex2D( TVE_ColorsTex_User, temp_output_35_38_g32385 );
				half4 localUSE_BUFFERS33_g32391 = USE_BUFFERS( Legacy33_g32391 , Vegetation33_g32391 , Grass33_g32391 , Objects33_g32391 , Custom33_g32391 );
				float4 temp_output_45_0_g32385 = localUSE_BUFFERS33_g32391;
				half3 Global_ColorsTex_RGB1700_g31431 = (temp_output_45_0_g32385).xyz;
				float lerpResult2103_g31431 = lerp( 1.0 , ( 1.0 - packedInput.ase_color.a ) , _ColorsMaskValue);
				float3 lerpResult108_g31431 = lerp( float3( 1,1,1 ) , ( (_LocalColors).rgb * ( Global_ColorsTex_RGB1700_g31431 * 4.594794 ) ) , ( _GlobalColors * lerpResult2103_g31431 ));
				half3 Global_Colors1954_g31431 = lerpResult108_g31431;
				float3 temp_output_123_0_g31431 = ( Main_AlbedoTinted2808_g31431 * Global_Colors1954_g31431 );
				half3 Main_AlbedoColored863_g31431 = temp_output_123_0_g31431;
				half3 Blend_Albedo265_g31431 = Main_AlbedoColored863_g31431;
				float3 lerpResult2929_g31431 = lerp( float3( 1,1,1 ) , (TVE_MainLightParams).rgb , _SubsurfaceLightValue);
				half3 Subsurface_Color1722_g31431 = ( (_SubsurfaceColor).rgb * lerpResult2929_g31431 );
				half Global_ColorsTex_A1701_g31431 = (temp_output_45_0_g32385).w;
				float lerpResult1720_g31431 = lerp( 1.0 , Global_ColorsTex_A1701_g31431 , _GlobalHealthiness);
				half Subsurface_Intensity1752_g31431 = ( ( _SubsurfaceValue * lerpResult1720_g31431 ) + _SubsurfaceCat );
				float lerpResult3219_g31431 = lerp( 1.0 , packedInput.ase_color.a , _SubsurfaceMaskValue);
				half Subsurface_Mask1557_g31431 = lerpResult3219_g31431;
				half3 Subsurface_Transmission884_g31431 = ( Subsurface_Color1722_g31431 * Subsurface_Intensity1752_g31431 * Subsurface_Mask1557_g31431 );
				float3 normalizeResult1983_g31431 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float dotResult785_g31431 = dot( -TVE_MainLightDirection , normalizeResult1983_g31431 );
				float saferPower1624_g31431 = max( (dotResult785_g31431*0.5 + 0.5) , 0.0001 );
				#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch1602_g31431 = 0.0;
				#else
				float staticSwitch1602_g31431 = ( pow( saferPower1624_g31431 , _SubsurfaceAngleValue ) * _SubsurfaceViewValue );
				#endif
				half Mask_Subsurface_View782_g31431 = staticSwitch1602_g31431;
				half3 Subsurface_Deferred1693_g31431 = ( Subsurface_Transmission884_g31431 * Mask_Subsurface_View782_g31431 );
				half3 Blend_AlbedoAndSubsurface149_g31431 = ( Blend_Albedo265_g31431 + Subsurface_Deferred1693_g31431 );
				half3 Global_OverlayColor1758_g31431 = (TVE_OverlayColor).rgb;
				float4 tex2DNode117_g31431 = tex2D( _MainNormalTex, Main_UVs15_g31431 );
				float2 appendResult88_g32418 = (float2(tex2DNode117_g31431.a , tex2DNode117_g31431.g));
				float2 temp_output_90_0_g32418 = ( (appendResult88_g32418*2.0 + -1.0) * _MainNormalValue );
				float2 break93_g32418 = temp_output_90_0_g32418;
				half Main_NormalY2095_g31431 = break93_g32418.y;
				half Overlay_Contrast1405_g31431 = _OverlayContrastValue;
				half Global_OverlayIntensity154_g31431 = TVE_OverlayIntensity;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32355 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32358 = localObjectPosition_UNITY_MATRIX_M14_g32355;
				float4 transform68_g32355 = mul(GetObjectToWorldMatrix(),packedInput.ase_texcoord8);
				transform68_g32355.xyz = GetAbsolutePositionWS((transform68_g32355).xyz);
				float3 appendResult95_g32355 = (float3(packedInput.ase_texcoord6.z , 0.0 , packedInput.ase_texcoord6.w));
				float4 transform62_g32355 = mul(GetObjectToWorldMatrix(),float4( ( packedInput.ase_texcoord8.xyz - ( appendResult95_g32355 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32355.xyz = GetAbsolutePositionWS((transform62_g32355).xyz);
				float3 ObjectPositionWithPivots28_g32355 = ( (transform68_g32355).xyz - (transform62_g32355).xyz );
				half3 On20_g32358 = ObjectPositionWithPivots28_g32355;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32358 = On20_g32358;
				#else
				float3 staticSwitch14_g32358 = Off19_g32358;
				#endif
				half3 ObjectData20_g32359 = staticSwitch14_g32358;
				half3 WorldData19_g32359 = Off19_g32358;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32359 = WorldData19_g32359;
				#else
				float3 staticSwitch14_g32359 = ObjectData20_g32359;
				#endif
				float3 temp_output_66_0_g32355 = staticSwitch14_g32359;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32355 = ( temp_output_66_0_g32355 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32355 = temp_output_66_0_g32355;
				#endif
				half3 ObjectData20_g32354 = staticSwitch13_g32355;
				half3 WorldData19_g32354 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32354 = WorldData19_g32354;
				#else
				float3 staticSwitch14_g32354 = ObjectData20_g32354;
				#endif
				float2 temp_output_43_38_g32352 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32354).xz ) );
				half4 Legacy33_g32353 = tex2D( TVE_ExtrasTex, temp_output_43_38_g32352 );
				half4 Vegetation33_g32353 = tex2D( TVE_ExtrasTex_Vegetation, temp_output_43_38_g32352 );
				half4 Grass33_g32353 = tex2D( TVE_ExtrasTex_Grass, temp_output_43_38_g32352 );
				half4 Objects33_g32353 = tex2D( TVE_ExtrasTex_Objects, temp_output_43_38_g32352 );
				half4 Custom33_g32353 = tex2D( TVE_ExtrasTex_User, temp_output_43_38_g32352 );
				half4 localUSE_BUFFERS33_g32353 = USE_BUFFERS( Legacy33_g32353 , Vegetation33_g32353 , Grass33_g32353 , Objects33_g32353 , Custom33_g32353 );
				float4 break49_g32352 = localUSE_BUFFERS33_g32353;
				half Global_ExtrasTex_B156_g31431 = break49_g32352.z;
				float temp_output_1025_0_g31431 = ( Global_OverlayIntensity154_g31431 * _GlobalOverlay * Global_ExtrasTex_B156_g31431 );
				float lerpResult1065_g31431 = lerp( 1.0 , packedInput.ase_color.r , _OverlayVariationValue);
				half Overlay_Commons1365_g31431 = ( temp_output_1025_0_g31431 * lerpResult1065_g31431 );
				half Overlay_Mask269_g31431 = saturate( ( saturate( ( packedInput.ase_color.a + ( Main_NormalY2095_g31431 * Overlay_Contrast1405_g31431 ) ) ) - ( 1.0 - Overlay_Commons1365_g31431 ) ) );
				float3 lerpResult336_g31431 = lerp( Blend_AlbedoAndSubsurface149_g31431 , Global_OverlayColor1758_g31431 , Overlay_Mask269_g31431);
				half3 Final_Albedo359_g31431 = lerpResult336_g31431;
				half Main_Alpha316_g31431 = (temp_output_51_0_g31431).a;
				float lerpResult354_g31431 = lerp( 1.0 , Main_Alpha316_g31431 , _render_premul);
				half Final_Premultiply355_g31431 = lerpResult354_g31431;
				float3 temp_output_410_0_g31431 = ( Final_Albedo359_g31431 * Final_Premultiply355_g31431 );
				float3 temp_cast_12 = (1.0).xxx;
				half Mesh_Occlusion318_g31431 = packedInput.ase_color.g;
				float saferPower1201_g31431 = max( Mesh_Occlusion318_g31431 , 0.0001 );
				float3 lerpResult2945_g31431 = lerp( (_VertexOcclusionColor).rgb , temp_cast_12 , saturate( pow( saferPower1201_g31431 , ( _VertexOcclusionValue + _OcclusionCat ) ) ));
				half3 Vertex_Occlusion648_g31431 = lerpResult2945_g31431;
				
				float3 appendResult91_g32418 = (float3(temp_output_90_0_g32418 , 1.0));
				half3 Main_Normal137_g31431 = appendResult91_g32418;
				float3 temp_output_13_0_g32320 = Main_Normal137_g31431;
				float3 switchResult12_g32320 = (((isFrontFace>0)?(temp_output_13_0_g32320):(( temp_output_13_0_g32320 * _render_normals_options ))));
				half3 Blend_Normal312_g31431 = switchResult12_g32320;
				half3 Final_Normal366_g31431 = Blend_Normal312_g31431;
				
				float4 tex2DNode35_g31431 = tex2D( _MainMaskTex, Main_UVs15_g31431 );
				half Main_Smoothness227_g31431 = ( tex2DNode35_g31431.a * _MainSmoothnessValue );
				half Blend_Smoothness314_g31431 = Main_Smoothness227_g31431;
				half Global_OverlaySmoothness311_g31431 = TVE_OverlaySmoothness;
				float lerpResult343_g31431 = lerp( Blend_Smoothness314_g31431 , Global_OverlaySmoothness311_g31431 , Overlay_Mask269_g31431);
				half Final_Smoothness371_g31431 = lerpResult343_g31431;
				half Global_Wetness1016_g31431 = ( TVE_Wetness * _GlobalWetness );
				half Global_ExtrasTex_A1033_g31431 = break49_g32352.w;
				float lerpResult1037_g31431 = lerp( Final_Smoothness371_g31431 , saturate( ( Final_Smoothness371_g31431 + Global_Wetness1016_g31431 ) ) , Global_ExtrasTex_A1033_g31431);
				
				float lerpResult240_g31431 = lerp( 1.0 , tex2DNode35_g31431.g , _MainOcclusionValue);
				half Main_Occlusion247_g31431 = lerpResult240_g31431;
				half Blend_Occlusion323_g31431 = Main_Occlusion247_g31431;
				
				float localCustomAlphaClip9_g32414 = ( 0.0 );
				half Main_AlphaRaw1203_g31431 = tex2DNode29_g31431.a;
				float Mesh_Variation16_g31431 = packedInput.ase_color.r;
				float lerpResult2262_g31431 = lerp( 0.9 , Mesh_Variation16_g31431 , _LeavesVariationValue);
				half Global_ExtrasTex_R174_g31431 = break49_g32352.x;
				float lerpResult2624_g31431 = lerp( 1.0 , Global_ExtrasTex_R174_g31431 , _GlobalLeaves);
				half AlphaTreshold2132_g31431 = _Cutoff;
				half Mask_Leaves315_g31431 = ( ( (lerpResult2262_g31431*0.5 + 0.5) - ( 1.0 - ( lerpResult2624_g31431 * _LocalLeaves ) ) ) + AlphaTreshold2132_g31431 );
				half Alpha5_g32414 = ( Main_AlphaRaw1203_g31431 * Mask_Leaves315_g31431 );
				float Alpha9_g32414 = Alpha5_g32414;
				#if _ALPHATEST_ON
				clip(Alpha9_g32414 - _Cutoff);
				#endif
				half Final_Clip914_g31431 = localCustomAlphaClip9_g32414;
				
				surfaceDescription.Albedo = ( temp_output_410_0_g31431 * Vertex_Occlusion648_g31431 );
				surfaceDescription.Normal = Final_Normal366_g31431;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = lerpResult1037_g31431;
				surfaceDescription.Occlusion = Blend_Occlusion323_g31431;
				surfaceDescription.Alpha = Main_Alpha316_g31431;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = Final_Clip914_g31431;
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
				surfaceDescription.AlphaClipThresholdShadow = 0.5;
				#endif

				surfaceDescription.AlphaClipThresholdDepthPrepass = 0.5;
				surfaceDescription.AlphaClipThresholdDepthPostpass = 0.5;

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				#ifdef _ASE_DISTORTION
				surfaceDescription.Distortion = float2 ( 2, -1 );
				surfaceDescription.DistortionBlur = 1;
				#endif

				#ifdef _ASE_BAKEDGI
				surfaceDescription.BakedGI = 0;
				#endif
				#ifdef _ASE_BAKEDBACKGI
				surfaceDescription.BakedBackGI = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				GetSurfaceAndBuiltinData( surfaceDescription, input, V, posInput, surfaceData, builtinData );
				ENCODE_INTO_GBUFFER( surfaceData, builtinData, posInput.positionSS, outGBuffer );
				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "META"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM

			#define ASE_NEED_CULLFACE 1
			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#pragma multi_compile _ DOTS_INSTANCING_ON
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 70201
			#if !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif //ASE_NEED_CULLFACE


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_LIGHT_TRANSPORT

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_VFACE
			#pragma shader_feature_local TVE_VERTEX_DATA_OBJECT TVE_VERTEX_DATA_WORLD TVE_VERTEX_DATA_BATCHED
			  
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			    
			#define TVE_IS_GRASS_SHADER
			#define TVE_PIVOT_DATA_BAKED


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			CBUFFER_START( UnityPerMaterial )
			half4 _NoiseTintOne;
			half4 _GradientColorOne;
			half4 _NoiseTintTwo;
			half4 _GradientColorTwo;
			float4 _MaxBoundsInfo;
			float4 _Color;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _MotionHighlightColor;
			float4 _LocalColors;
			half4 _SubsurfaceColor;
			float4 _SubsurfaceDiffusion_asset;
			half4 _VertexOcclusionColor;
			half3 _render_normals_options;
			float _MotionVariation_32;
			half _BatchingMessage;
			half _IsLitShader;
			half _IsStandardShader;
			half _PerspectiveAngleValue;
			half _PerspectiveNoiseValue;
			half _PerspectiveCat;
			half _Banner;
			half _IsGrassShader;
			half _Motion_10;
			half _Motion_Interaction;
			half _PerspectivePushValue;
			half _LocalSize;
			half _vertex_pivot_mode;
			half _GlobalSize;
			half _GradientMinValue;
			half _VertexDataMode;
			half _VertexMotionMode;
			half _VertexMotionSpace;
			half _VertexCat;
			half _Motion_32;
			half _VertexPivotMode;
			half _GlobalSizeFade;
			half _IsAnyPathShader;
			half _GradientCat;
			half _LeavesVariationValue;
			half _MainOcclusionValue;
			half _GlobalWetness;
			half _MainSmoothnessValue;
			half _OcclusionCat;
			half _VertexOcclusionValue;
			half _render_premul;
			half _OverlayVariationValue;
			half _GlobalOverlay;
			half _OverlayContrastValue;
			half _SubsurfaceViewValue;
			half _GradientMaxValue;
			half _SubsurfaceAngleValue;
			half _SubsurfaceCat;
			half _GlobalHealthiness;
			half _SubsurfaceValue;
			half _SubsurfaceLightValue;
			half _ColorsMaskValue;
			half _GlobalColors;
			half _NoiseMaxValue;
			half _NoiseMinValue;
			half _MoiseCat;
			half _NoiseScaleValue;
			half _DetailMapsMode;
			half _SubsurfaceMaskValue;
			half _DetailTypeMode;
			half _DetailCat;
			half _ObjectDataMessage;
			half _IsTVEShader;
			float _MotionScale_32;
			half _InteractionVariation;
			half _MotionAmplitude_30;
			float _material_batching;
			half _MaskMode;
			float _ObjectMetallicValue;
			float _render_normals;
			float _GrassPerspectiveNoiseValue;
			float _ObjectSmoothnessValue;
			float _render_blend;
			float _render_mode;
			float _render_priority;
			float _OverlayVariation;
			float _OverlayContrast;
			float _GrassPerspectivePushValue;
			float _ObjectOcclusionValue;
			float _SubsurfaceMinValue;
			float _GrassPerspectiveAngleValue;
			float _SubsurfaceMaxValue;
			half _GlobalSpace;
			half _DetailSpace;
			half _render_dst;
			half _render_src;
			half _render_zw;
			half _render_cutoff;
			half _render_cull;
			half _Cutoff;
			half _MotionVariation_20;
			half _VertexVariationMode;
			half _RenderingCat;
			half _GlobalLeaves;
			half _AdvancedCat;
			float _MotionScale_20;
			half _MainCat;
			float _MotionVariation_30;
			half _RenderMode;
			half _MotionAmplitude_20;
			half _MotionVariation_10;
			half _WorldDataMessage;
			float _MotionSpeed_10;
			half _DetailMode;
			half _RenderPriority;
			half _RenderBlend;
			half _GlobalCat;
			half _RenderZWrite;
			half _RenderCull;
			float _MotionSpeed_30;
			half _PivotsMessage;
			half _MotionAmplitude_10;
			float _MotionScale_10;
			float _MotionSpeed_20;
			half _RenderClip;
			half _InteractionAmplitude;
			float _MotionSpeed_32;
			float _MotionScale_30;
			half _RenderNormals;
			half _MainNormalValue;
			half _IsVersion;
			half _MotionAmplitude_32;
			half _LocalLeaves;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _MainTex;
			sampler2D TVE_MotionTex;
			half4 TVE_VolumeCoord;
			sampler2D TVE_MotionTex_Vegetation;
			sampler2D TVE_MotionTex_Grass;
			sampler2D TVE_MotionTex_Objects;
			sampler2D TVE_MotionTex_User;
			half TVE_WindPower;
			sampler2D TVE_NoiseTex;
			float2 TVE_NoiseSpeed_Vegetation;
			float2 TVE_NoiseSpeed_Grass;
			half TVE_NoiseSize_Vegetation;
			half TVE_NoiseSize_Grass;
			half TVE_NoiseContrast;
			half TVE_WindMode;
			half TVE_SizeFadeEnd;
			half TVE_SizeFadeStart;
			sampler2D TVE_ExtrasTex;
			sampler2D TVE_ExtrasTex_Vegetation;
			sampler2D TVE_ExtrasTex_Grass;
			sampler2D TVE_ExtrasTex_Objects;
			sampler2D TVE_ExtrasTex_User;
			sampler2D _NoiseTex;
			SAMPLER(sampler_NoiseTex);
			sampler2D _MainAlbedoTex;
			SAMPLER(samplerTVE_NoiseTex);
			half TVE_NoiseHighlight;
			sampler2D TVE_ColorsTex;
			sampler2D TVE_ColorsTex_Vegetation;
			sampler2D TVE_ColorsTex_Grass;
			sampler2D TVE_ColorsTex_Objects;
			sampler2D TVE_ColorsTex_User;
			float4 TVE_MainLightParams;
			half3 TVE_MainLightDirection;
			half4 TVE_OverlayColor;
			sampler2D _MainNormalTex;
			SAMPLER(sampler_MainNormalTex);
			half TVE_OverlayIntensity;
			sampler2D _MainMaskTex;
			SAMPLER(sampler_MainMaskTex);
			half TVE_OverlaySmoothness;
			float TVE_Wetness;
			SAMPLER(sampler_MainAlbedoTex);


			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			
			half4 USE_BUFFERS( half4 Legacy, half4 Vegetation, half4 Grass, half4 Objects, half4 Custom )
			{
				#if defined (TVE_IS_VEGETATION_SHADER)
				return Vegetation;
				#elif defined (TVE_IS_GRASS_SHADER)
				return Grass;
				#elif defined (TVE_IS_OBJECT_SHADER)
				return Objects;
				#elif defined (TVE_IS_CUSTOM_SHADER)
				return Custom;
				#else
				return Legacy;
				#endif
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.baseColor =					surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif
				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness =					surfaceDescription.Thickness;
				#endif
				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;
				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData( posInput, surfaceDescription.Alpha );
					ApplyDecalToSurfaceData( decalSurfaceData, surfaceData );
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				//#ifdef _ALPHATEST_ON
				//DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				//#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				builtinData.emissiveColor = surfaceDescription.Emission;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
				builtinData.distortion = surfaceDescription.Distortion;
				builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
				builtinData.distortion = float2(0.0, 0.0);
				builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			CBUFFER_START(UnityMetaPass)
			bool4 unity_MetaVertexControl;
			bool4 unity_MetaFragmentControl;
			CBUFFER_END

			float unity_OneOverOutputBoost;
			float unity_MaxOutputValue;

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh  )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);

				half3 _Vector1 = half3(0,0,0);
				half3 Off19_g32361 = _Vector1;
				float3 appendResult2827_g31431 = (float3(inputMesh.uv0.z , inputMesh.ase_texcoord3.w , inputMesh.uv0.w));
				half3 Mesh_PivotsData2831_g31431 = ( appendResult2827_g31431 * _VertexPivotMode );
				half3 On20_g32361 = Mesh_PivotsData2831_g31431;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32361 = On20_g32361;
				#else
				float3 staticSwitch14_g32361 = Off19_g32361;
				#endif
				half3 ObjectData20_g32362 = staticSwitch14_g32361;
				half3 WorldData19_g32362 = Off19_g32361;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32362 = WorldData19_g32362;
				#else
				float3 staticSwitch14_g32362 = ObjectData20_g32362;
				#endif
				#ifdef TVE_VERTEX_DATA_WORLD
				float3 staticSwitch14_g32384 = _Vector1;
				#else
				float3 staticSwitch14_g32384 = staticSwitch14_g32362;
				#endif
				half3 Mesh_PivotsOS2291_g31431 = staticSwitch14_g32384;
				float3 temp_output_2283_0_g31431 = ( inputMesh.positionOS - Mesh_PivotsOS2291_g31431 );
				half3 VertexPos40_g32429 = temp_output_2283_0_g31431;
				float3 appendResult74_g32429 = (float3(VertexPos40_g32429.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g32429 = appendResult74_g32429;
				float3 break84_g32429 = VertexPos40_g32429;
				float3 appendResult81_g32429 = (float3(0.0 , break84_g32429.y , break84_g32429.z));
				half3 VertexPosOtherAxis82_g32429 = appendResult81_g32429;
				float ObjectData20_g32403 = 3.14;
				float Bounds_Height374_g31431 = _MaxBoundsInfo.y;
				float WorldData19_g32403 = ( Bounds_Height374_g31431 * 3.14 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32403 = WorldData19_g32403;
				#else
				float staticSwitch14_g32403 = ObjectData20_g32403;
				#endif
				float Motion_Max_Bending1133_g31431 = staticSwitch14_g32403;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32396 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32399 = localObjectPosition_UNITY_MATRIX_M14_g32396;
				float4 transform68_g32396 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32396.xyz = GetAbsolutePositionWS((transform68_g32396).xyz);
				float3 appendResult93_g32396 = (float3(inputMesh.uv0.z , inputMesh.ase_texcoord3.w , inputMesh.uv0.w));
				float4 transform62_g32396 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult93_g32396 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32396.xyz = GetAbsolutePositionWS((transform62_g32396).xyz);
				float3 ObjectPositionWithPivots28_g32396 = ( (transform68_g32396).xyz - (transform62_g32396).xyz );
				half3 On20_g32399 = ObjectPositionWithPivots28_g32396;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32399 = On20_g32399;
				#else
				float3 staticSwitch14_g32399 = Off19_g32399;
				#endif
				half3 ObjectData20_g32400 = staticSwitch14_g32399;
				half3 WorldData19_g32400 = Off19_g32399;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32400 = WorldData19_g32400;
				#else
				float3 staticSwitch14_g32400 = ObjectData20_g32400;
				#endif
				float3 temp_output_66_0_g32396 = staticSwitch14_g32400;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32396 = ( temp_output_66_0_g32396 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32396 = temp_output_66_0_g32396;
				#endif
				half3 ObjectData20_g32401 = staticSwitch13_g32396;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				half3 WorldData19_g32401 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32401 = WorldData19_g32401;
				#else
				float3 staticSwitch14_g32401 = ObjectData20_g32401;
				#endif
				float2 temp_output_39_38_g32394 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32401).xz ) );
				half4 Legacy33_g32402 = tex2Dlod( TVE_MotionTex, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Vegetation33_g32402 = tex2Dlod( TVE_MotionTex_Vegetation, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Grass33_g32402 = tex2Dlod( TVE_MotionTex_Grass, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Objects33_g32402 = tex2Dlod( TVE_MotionTex_Objects, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Custom33_g32402 = tex2Dlod( TVE_MotionTex_User, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 localUSE_BUFFERS33_g32402 = USE_BUFFERS( Legacy33_g32402 , Vegetation33_g32402 , Grass33_g32402 , Objects33_g32402 , Custom33_g32402 );
				float4 break322_g32350 = localUSE_BUFFERS33_g32402;
				half Wind_Power369_g32350 = saturate( ( (break322_g32350.z*2.0 + -1.0) + TVE_WindPower ) );
				half Wind_Power_103106_g31431 = Wind_Power369_g32350;
				float3 appendResult323_g32350 = (float3(break322_g32350.x , 0.0 , break322_g32350.y));
				float3 temp_output_324_0_g32350 = (appendResult323_g32350*2.0 + -1.0);
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				float3 temp_output_339_0_g32350 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_324_0_g32350 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Wind_DirectionOS39_g31431 = (temp_output_339_0_g32350).xz;
				half Motion_Use1056_g31431 = _Motion_10;
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch160_g32370 = TVE_NoiseSpeed_Grass;
				#else
				float2 staticSwitch160_g32370 = TVE_NoiseSpeed_Vegetation;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g32372 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32375 = localObjectPosition_UNITY_MATRIX_M14_g32372;
				float4 transform68_g32372 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32372.xyz = GetAbsolutePositionWS((transform68_g32372).xyz);
				float3 appendResult95_g32372 = (float3(inputMesh.uv0.z , 0.0 , inputMesh.uv0.w));
				float4 transform62_g32372 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32372 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32372.xyz = GetAbsolutePositionWS((transform62_g32372).xyz);
				float3 ObjectPositionWithPivots28_g32372 = ( (transform68_g32372).xyz - (transform62_g32372).xyz );
				half3 On20_g32375 = ObjectPositionWithPivots28_g32372;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32375 = On20_g32375;
				#else
				float3 staticSwitch14_g32375 = Off19_g32375;
				#endif
				half3 ObjectData20_g32376 = staticSwitch14_g32375;
				half3 WorldData19_g32376 = Off19_g32375;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32376 = WorldData19_g32376;
				#else
				float3 staticSwitch14_g32376 = ObjectData20_g32376;
				#endif
				float3 temp_output_66_0_g32372 = staticSwitch14_g32376;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32372 = ( temp_output_66_0_g32372 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32372 = temp_output_66_0_g32372;
				#endif
				half3 ObjectData20_g32371 = staticSwitch13_g32372;
				half3 WorldData19_g32371 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32371 = WorldData19_g32371;
				#else
				float3 staticSwitch14_g32371 = ObjectData20_g32371;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch164_g32370 = (ase_worldPos).xz;
				#else
				float2 staticSwitch164_g32370 = (staticSwitch14_g32371).xz;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float staticSwitch161_g32370 = TVE_NoiseSize_Grass;
				#else
				float staticSwitch161_g32370 = TVE_NoiseSize_Vegetation;
				#endif
				float2 panner73_g32370 = ( _TimeParameters.x * staticSwitch160_g32370 + ( staticSwitch164_g32370 * staticSwitch161_g32370 ));
				float4 tex2DNode75_g32370 = tex2Dlod( TVE_NoiseTex, float4( panner73_g32370, 0, 0.0) );
				float4 saferPower77_g32370 = max( abs( tex2DNode75_g32370 ) , 0.0001 );
				float4 temp_cast_9 = (TVE_NoiseContrast).xxxx;
				float4 break142_g32370 = pow( saferPower77_g32370 , temp_cast_9 );
				half Global_NoiseTex_R34_g31431 = break142_g32370.r;
				half Input_Speed62_g32427 = _MotionSpeed_10;
				float mulTime373_g32427 = _TimeParameters.x * Input_Speed62_g32427;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32409 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32412 = localObjectPosition_UNITY_MATRIX_M14_g32409;
				float4 transform68_g32409 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32409.xyz = GetAbsolutePositionWS((transform68_g32409).xyz);
				float3 appendResult95_g32409 = (float3(inputMesh.uv0.z , 0.0 , inputMesh.uv0.w));
				float4 transform62_g32409 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32409 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32409.xyz = GetAbsolutePositionWS((transform62_g32409).xyz);
				float3 ObjectPositionWithPivots28_g32409 = ( (transform68_g32409).xyz - (transform62_g32409).xyz );
				half3 On20_g32412 = ObjectPositionWithPivots28_g32409;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32412 = On20_g32412;
				#else
				float3 staticSwitch14_g32412 = Off19_g32412;
				#endif
				half3 ObjectData20_g32413 = staticSwitch14_g32412;
				half3 WorldData19_g32413 = Off19_g32412;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32413 = WorldData19_g32413;
				#else
				float3 staticSwitch14_g32413 = ObjectData20_g32413;
				#endif
				float3 temp_output_66_0_g32409 = staticSwitch14_g32413;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32409 = ( temp_output_66_0_g32409 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32409 = temp_output_66_0_g32409;
				#endif
				float3 break9_g32409 = staticSwitch13_g32409;
				half Variation_Complex102_g32406 = frac( ( inputMesh.ase_color.r + ( break9_g32409.x + break9_g32409.z ) ) );
				float ObjectData20_g32408 = Variation_Complex102_g32406;
				half Variation_Simple105_g32406 = inputMesh.ase_color.r;
				float WorldData19_g32408 = Variation_Simple105_g32406;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32408 = WorldData19_g32408;
				#else
				float staticSwitch14_g32408 = ObjectData20_g32408;
				#endif
				half Variation3073_g31431 = staticSwitch14_g32408;
				half Motion_Variation284_g32427 = ( _MotionVariation_10 * Variation3073_g31431 );
				float2 appendResult344_g32427 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 Motion_Scale287_g32427 = ( _MotionScale_10 * appendResult344_g32427 );
				half2 Sine_MinusOneToOne281_g32427 = sin( ( mulTime373_g32427 + Motion_Variation284_g32427 + Motion_Scale287_g32427 ) );
				float2 temp_cast_11 = (1.0).xx;
				half Input_Turbulence327_g32427 = Global_NoiseTex_R34_g31431;
				float2 lerpResult321_g32427 = lerp( Sine_MinusOneToOne281_g32427 , temp_cast_11 , Input_Turbulence327_g32427);
				half2 Motion_Bending2258_g31431 = ( ( _MotionAmplitude_10 * Motion_Max_Bending1133_g31431 ) * Wind_Power_103106_g31431 * Wind_DirectionOS39_g31431 * Motion_Use1056_g31431 * Global_NoiseTex_R34_g31431 * lerpResult321_g32427 );
				half Motion_UseInteraction2097_g31431 = _Motion_Interaction;
				half Motion_InteractionMask66_g31431 = break322_g32350.w;
				float lerpResult3307_g31431 = lerp( 1.0 , Variation3073_g31431 , _InteractionVariation);
				half2 Motion_Interaction53_g31431 = ( _InteractionAmplitude * Motion_Max_Bending1133_g31431 * Motion_UseInteraction2097_g31431 * Motion_InteractionMask66_g31431 * Motion_InteractionMask66_g31431 * Wind_DirectionOS39_g31431 * lerpResult3307_g31431 );
				float2 lerpResult109_g31431 = lerp( Motion_Bending2258_g31431 , Motion_Interaction53_g31431 , Motion_InteractionMask66_g31431);
				half Mesh_Motion_182_g31431 = inputMesh.ase_texcoord3.x;
				float2 break143_g31431 = ( lerpResult109_g31431 * Mesh_Motion_182_g31431 );
				half Motion_Z190_g31431 = break143_g31431.y;
				half Angle44_g32429 = Motion_Z190_g31431;
				half3 VertexPos40_g32421 = ( VertexPosRotationAxis50_g32429 + ( VertexPosOtherAxis82_g32429 * cos( Angle44_g32429 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g32429 ) * sin( Angle44_g32429 ) ) );
				float3 appendResult74_g32421 = (float3(0.0 , 0.0 , VertexPos40_g32421.z));
				half3 VertexPosRotationAxis50_g32421 = appendResult74_g32421;
				float3 break84_g32421 = VertexPos40_g32421;
				float3 appendResult81_g32421 = (float3(break84_g32421.x , break84_g32421.y , 0.0));
				half3 VertexPosOtherAxis82_g32421 = appendResult81_g32421;
				half Motion_X216_g31431 = break143_g31431.x;
				half Angle44_g32421 = -Motion_X216_g31431;
				half Motion_Scale321_g32419 = ( _MotionScale_32 * 10.0 );
				half Input_Speed62_g32419 = _MotionSpeed_32;
				float mulTime349_g32419 = _TimeParameters.x * Input_Speed62_g32419;
				float Motion_Variation330_g32419 = ( _MotionVariation_32 * inputMesh.ase_color.r );
				float Bounds_Radius121_g31431 = _MaxBoundsInfo.x;
				half Input_Amplitude58_g32419 = ( _MotionAmplitude_32 * Bounds_Radius121_g31431 * 0.1 );
				float3 appendResult345_g32419 = (float3(inputMesh.ase_color.r , ( 1.0 - inputMesh.ase_color.r ) , inputMesh.ase_color.r));
				half Global_NoiseTex_B132_g31431 = break142_g32370.b;
				half Mesh_Motion_3144_g31431 = inputMesh.ase_texcoord3.z;
				half Motion_Use322013_g31431 = _Motion_32;
				float lerpResult376_g32350 = lerp( 0.1 , 1.0 , Wind_Power369_g32350);
				half Wind_Power_323115_g31431 = lerpResult376_g32350;
				half3 Motion_Flutter263_g31431 = ( ( sin( ( ( ( ase_worldPos.x + ase_worldPos.y + ase_worldPos.z ) * Motion_Scale321_g32419 ) + mulTime349_g32419 + Motion_Variation330_g32419 ) ) * Input_Amplitude58_g32419 * appendResult345_g32419 ) * ( ( Global_NoiseTex_R34_g31431 + Global_NoiseTex_B132_g31431 ) * Mesh_Motion_3144_g31431 * Motion_Use322013_g31431 * Wind_Power_323115_g31431 ) );
				half Wind_Mode3167_g31431 = TVE_WindMode;
				float3 lerpResult3168_g31431 = lerp( inputMesh.positionOS , ( ( VertexPosRotationAxis50_g32421 + ( VertexPosOtherAxis82_g32421 * cos( Angle44_g32421 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g32421 ) * sin( Angle44_g32421 ) ) ) + Motion_Flutter263_g31431 ) , Wind_Mode3167_g31431);
				float3 Vertex_Motion_Object833_g31431 = lerpResult3168_g31431;
				float3 appendResult2043_g31431 = (float3(Motion_X216_g31431 , 0.0 , Motion_Z190_g31431));
				float3 lerpResult3173_g31431 = lerp( inputMesh.positionOS , ( ( inputMesh.positionOS + appendResult2043_g31431 ) + Motion_Flutter263_g31431 ) , Wind_Mode3167_g31431);
				float3 Vertex_Motion_World1118_g31431 = lerpResult3173_g31431;
				float3 temp_output_3331_0_g31431 = ( ( _VertexCat * _VertexMotionSpace * _VertexMotionMode * _VertexDataMode ) + Vertex_Motion_World1118_g31431 );
				#if defined(TVE_VERTEX_DATA_OBJECT)
				float3 staticSwitch3312_g31431 = Vertex_Motion_Object833_g31431;
				#elif defined(TVE_VERTEX_DATA_WORLD)
				float3 staticSwitch3312_g31431 = temp_output_3331_0_g31431;
				#elif defined(TVE_VERTEX_DATA_BATCHED)
				float3 staticSwitch3312_g31431 = temp_output_3331_0_g31431;
				#else
				float3 staticSwitch3312_g31431 = Vertex_Motion_Object833_g31431;
				#endif
				half3 ObjectData20_g32349 = staticSwitch3312_g31431;
				half3 WorldData19_g32349 = Vertex_Motion_World1118_g31431;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32349 = WorldData19_g32349;
				#else
				float3 staticSwitch14_g32349 = ObjectData20_g32349;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g32365 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32368 = localObjectPosition_UNITY_MATRIX_M14_g32365;
				float4 transform68_g32365 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32365.xyz = GetAbsolutePositionWS((transform68_g32365).xyz);
				float3 appendResult93_g32365 = (float3(inputMesh.uv0.z , inputMesh.ase_texcoord3.w , inputMesh.uv0.w));
				float4 transform62_g32365 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult93_g32365 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32365.xyz = GetAbsolutePositionWS((transform62_g32365).xyz);
				float3 ObjectPositionWithPivots28_g32365 = ( (transform68_g32365).xyz - (transform62_g32365).xyz );
				half3 On20_g32368 = ObjectPositionWithPivots28_g32365;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32368 = On20_g32368;
				#else
				float3 staticSwitch14_g32368 = Off19_g32368;
				#endif
				half3 ObjectData20_g32369 = staticSwitch14_g32368;
				half3 WorldData19_g32369 = Off19_g32368;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32369 = WorldData19_g32369;
				#else
				float3 staticSwitch14_g32369 = ObjectData20_g32369;
				#endif
				float3 temp_output_66_0_g32365 = staticSwitch14_g32369;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32365 = ( temp_output_66_0_g32365 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32365 = temp_output_66_0_g32365;
				#endif
				float temp_output_7_0_g32416 = TVE_SizeFadeEnd;
				float ObjectData20_g32364 = saturate( ( ( ( distance( _WorldSpaceCameraPos , staticSwitch13_g32365 ) * _GlobalSizeFade ) - temp_output_7_0_g32416 ) / ( TVE_SizeFadeStart - temp_output_7_0_g32416 ) ) );
				float WorldData19_g32364 = 1.0;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32364 = WorldData19_g32364;
				#else
				float staticSwitch14_g32364 = ObjectData20_g32364;
				#endif
				float Vertex_SizeFade1740_g31431 = staticSwitch14_g32364;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32355 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32358 = localObjectPosition_UNITY_MATRIX_M14_g32355;
				float4 transform68_g32355 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32355.xyz = GetAbsolutePositionWS((transform68_g32355).xyz);
				float3 appendResult95_g32355 = (float3(inputMesh.uv0.z , 0.0 , inputMesh.uv0.w));
				float4 transform62_g32355 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32355 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32355.xyz = GetAbsolutePositionWS((transform62_g32355).xyz);
				float3 ObjectPositionWithPivots28_g32355 = ( (transform68_g32355).xyz - (transform62_g32355).xyz );
				half3 On20_g32358 = ObjectPositionWithPivots28_g32355;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32358 = On20_g32358;
				#else
				float3 staticSwitch14_g32358 = Off19_g32358;
				#endif
				half3 ObjectData20_g32359 = staticSwitch14_g32358;
				half3 WorldData19_g32359 = Off19_g32358;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32359 = WorldData19_g32359;
				#else
				float3 staticSwitch14_g32359 = ObjectData20_g32359;
				#endif
				float3 temp_output_66_0_g32355 = staticSwitch14_g32359;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32355 = ( temp_output_66_0_g32355 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32355 = temp_output_66_0_g32355;
				#endif
				half3 ObjectData20_g32354 = staticSwitch13_g32355;
				half3 WorldData19_g32354 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32354 = WorldData19_g32354;
				#else
				float3 staticSwitch14_g32354 = ObjectData20_g32354;
				#endif
				float2 temp_output_43_38_g32352 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32354).xz ) );
				half4 Legacy33_g32353 = tex2Dlod( TVE_ExtrasTex, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Vegetation33_g32353 = tex2Dlod( TVE_ExtrasTex_Vegetation, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Grass33_g32353 = tex2Dlod( TVE_ExtrasTex_Grass, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Objects33_g32353 = tex2Dlod( TVE_ExtrasTex_Objects, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Custom33_g32353 = tex2Dlod( TVE_ExtrasTex_User, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 localUSE_BUFFERS33_g32353 = USE_BUFFERS( Legacy33_g32353 , Vegetation33_g32353 , Grass33_g32353 , Objects33_g32353 , Custom33_g32353 );
				float4 break49_g32352 = localUSE_BUFFERS33_g32353;
				half Global_ExtrasTex_G305_g31431 = break49_g32352.y;
				float lerpResult346_g31431 = lerp( 1.0 , Global_ExtrasTex_G305_g31431 , _GlobalSize);
				float ObjectData20_g32363 = ( lerpResult346_g31431 * _LocalSize );
				float WorldData19_g32363 = 1.0;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32363 = WorldData19_g32363;
				#else
				float staticSwitch14_g32363 = ObjectData20_g32363;
				#endif
				half Vertex_Size1741_g31431 = staticSwitch14_g32363;
				float3 normalizeResult2696_g31431 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 break2709_g31431 = cross( normalizeResult2696_g31431 , half3(0,1,0) );
				float3 appendResult2710_g31431 = (float3(-break2709_g31431.z , 0.0 , break2709_g31431.x));
				float3 appendResult2667_g31431 = (float3(inputMesh.ase_color.r , 0.5 , inputMesh.ase_color.r));
				float3 normalizeResult2210_g31431 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float dotResult2212_g31431 = dot( normalizeResult2210_g31431 , float3(0,1,0) );
				half Mask_HView2656_g31431 = abs( dotResult2212_g31431 );
				float saferPower2652_g31431 = max( Mask_HView2656_g31431 , 0.0001 );
				half3 Grass_Coverage2661_g31431 = ( ( ( mul( GetWorldToObjectMatrix(), float4( appendResult2710_g31431 , 0.0 ) ).xyz * ( _PerspectivePushValue + _PerspectiveCat ) ) + ( (appendResult2667_g31431*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * inputMesh.ase_color.a * pow( saferPower2652_g31431 , _PerspectiveAngleValue ) );
				float3 Final_VertexPosition890_g31431 = ( ( staticSwitch14_g32349 * Vertex_SizeFade1740_g31431 * Vertex_Size1741_g31431 ) + Mesh_PivotsOS2291_g31431 + Grass_Coverage2661_g31431 );
				
				half2 Noise_UVs3274_g31431 = ( (ase_worldPos).xz * ( ( _NoiseScaleValue * 0.1 ) + _MoiseCat ) );
				float temp_output_7_0_g32314 = _NoiseMinValue;
				half Noise_Mask3162_g31431 = saturate( ( ( tex2Dlod( _NoiseTex, float4( Noise_UVs3274_g31431, 0, 0.0) ).r - temp_output_7_0_g32314 ) / ( _NoiseMaxValue - temp_output_7_0_g32314 ) ) );
				float4 lerpResult2800_g31431 = lerp( _NoiseTintTwo , _NoiseTintOne , Noise_Mask3162_g31431);
				half3 Noise_Tint2802_g31431 = (lerpResult2800_g31431).rgb;
				float3 vertexToFrag3225_g31431 = Noise_Tint2802_g31431;
				outputPackedVaryingsMeshToPS.ase_texcoord.xyz = vertexToFrag3225_g31431;
				half Global_NoiseTex_H2869_g31431 = pow( abs( tex2DNode75_g32370.r ) , TVE_NoiseHighlight );
				half3 Highlight_Tint3231_g31431 = ( ( (_MotionHighlightColor).rgb * Global_NoiseTex_H2869_g31431 * Wind_Power_103106_g31431 * Wind_Mode3167_g31431 * inputMesh.ase_color.r ) + float3( 1,1,1 ) );
				float3 vertexToFrag3252_g31431 = Highlight_Tint3231_g31431;
				outputPackedVaryingsMeshToPS.ase_texcoord2.xyz = vertexToFrag3252_g31431;
				outputPackedVaryingsMeshToPS.ase_texcoord4.xyz = ase_worldPos;
				
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;
				outputPackedVaryingsMeshToPS.ase_texcoord1 = inputMesh.uv0;
				outputPackedVaryingsMeshToPS.ase_texcoord3 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord2.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord4.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Final_VertexPosition890_g31431;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float2 uv = float2(0.0, 0.0);
				if (unity_MetaVertexControl.x)
				{
					uv = inputMesh.uv1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				}
				else if (unity_MetaVertexControl.y)
				{
					uv = inputMesh.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				}

				outputPackedVaryingsMeshToPS.positionCS = float4(uv * 2.0 - 1.0, inputMesh.positionOS.z > 0 ? 1.0e-4 : 0.0, 1.0);
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv0 = v.uv0;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv0 = patch[0].uv0 * bary.x + patch[1].uv0 * bary.y + patch[2].uv0 * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			float4 Frag(PackedVaryingsMeshToPS packedInput  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE(packedInput.cullFace, true, false);
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);
				float3 V = float3(1.0, 1.0, 1.0);

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float temp_output_7_0_g32317 = _GradientMinValue;
				float4 lerpResult2779_g31431 = lerp( _GradientColorTwo , _GradientColorOne , saturate( ( ( packedInput.ase_color.a - temp_output_7_0_g32317 ) / ( ( _GradientMaxValue + _GradientCat ) - temp_output_7_0_g32317 ) ) ));
				half3 Gradient_Tint2784_g31431 = (lerpResult2779_g31431).rgb;
				float3 vertexToFrag3225_g31431 = packedInput.ase_texcoord.xyz;
				half2 Main_UVs15_g31431 = ( ( packedInput.ase_texcoord1.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g31431 = tex2D( _MainAlbedoTex, Main_UVs15_g31431 );
				float4 temp_output_51_0_g31431 = ( _MainColor * tex2DNode29_g31431 );
				half3 Main_AlbedoRaw99_g31431 = (temp_output_51_0_g31431).rgb;
				float3 vertexToFrag3252_g31431 = packedInput.ase_texcoord2.xyz;
				half3 Main_AlbedoTinted2808_g31431 = ( Gradient_Tint2784_g31431 * vertexToFrag3225_g31431 * Main_AlbedoRaw99_g31431 * vertexToFrag3252_g31431 );
				float3 localObjectPosition_UNITY_MATRIX_M14_g32386 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32389 = localObjectPosition_UNITY_MATRIX_M14_g32386;
				float4 transform68_g32386 = mul(GetObjectToWorldMatrix(),packedInput.ase_texcoord3);
				transform68_g32386.xyz = GetAbsolutePositionWS((transform68_g32386).xyz);
				float3 appendResult95_g32386 = (float3(packedInput.ase_texcoord1.z , 0.0 , packedInput.ase_texcoord1.w));
				float4 transform62_g32386 = mul(GetObjectToWorldMatrix(),float4( ( packedInput.ase_texcoord3.xyz - ( appendResult95_g32386 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32386.xyz = GetAbsolutePositionWS((transform62_g32386).xyz);
				float3 ObjectPositionWithPivots28_g32386 = ( (transform68_g32386).xyz - (transform62_g32386).xyz );
				half3 On20_g32389 = ObjectPositionWithPivots28_g32386;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32389 = On20_g32389;
				#else
				float3 staticSwitch14_g32389 = Off19_g32389;
				#endif
				half3 ObjectData20_g32390 = staticSwitch14_g32389;
				half3 WorldData19_g32390 = Off19_g32389;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32390 = WorldData19_g32390;
				#else
				float3 staticSwitch14_g32390 = ObjectData20_g32390;
				#endif
				float3 temp_output_66_0_g32386 = staticSwitch14_g32390;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32386 = ( temp_output_66_0_g32386 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32386 = temp_output_66_0_g32386;
				#endif
				half3 ObjectData20_g32392 = staticSwitch13_g32386;
				float3 ase_worldPos = packedInput.ase_texcoord4.xyz;
				half3 WorldData19_g32392 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32392 = WorldData19_g32392;
				#else
				float3 staticSwitch14_g32392 = ObjectData20_g32392;
				#endif
				float2 temp_output_35_38_g32385 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32392).xz ) );
				half4 Legacy33_g32391 = tex2D( TVE_ColorsTex, temp_output_35_38_g32385 );
				half4 Vegetation33_g32391 = tex2D( TVE_ColorsTex_Vegetation, temp_output_35_38_g32385 );
				half4 Grass33_g32391 = tex2D( TVE_ColorsTex_Grass, temp_output_35_38_g32385 );
				half4 Objects33_g32391 = tex2D( TVE_ColorsTex_Objects, temp_output_35_38_g32385 );
				half4 Custom33_g32391 = tex2D( TVE_ColorsTex_User, temp_output_35_38_g32385 );
				half4 localUSE_BUFFERS33_g32391 = USE_BUFFERS( Legacy33_g32391 , Vegetation33_g32391 , Grass33_g32391 , Objects33_g32391 , Custom33_g32391 );
				float4 temp_output_45_0_g32385 = localUSE_BUFFERS33_g32391;
				half3 Global_ColorsTex_RGB1700_g31431 = (temp_output_45_0_g32385).xyz;
				float lerpResult2103_g31431 = lerp( 1.0 , ( 1.0 - packedInput.ase_color.a ) , _ColorsMaskValue);
				float3 lerpResult108_g31431 = lerp( float3( 1,1,1 ) , ( (_LocalColors).rgb * ( Global_ColorsTex_RGB1700_g31431 * 4.594794 ) ) , ( _GlobalColors * lerpResult2103_g31431 ));
				half3 Global_Colors1954_g31431 = lerpResult108_g31431;
				float3 temp_output_123_0_g31431 = ( Main_AlbedoTinted2808_g31431 * Global_Colors1954_g31431 );
				half3 Main_AlbedoColored863_g31431 = temp_output_123_0_g31431;
				half3 Blend_Albedo265_g31431 = Main_AlbedoColored863_g31431;
				float3 lerpResult2929_g31431 = lerp( float3( 1,1,1 ) , (TVE_MainLightParams).rgb , _SubsurfaceLightValue);
				half3 Subsurface_Color1722_g31431 = ( (_SubsurfaceColor).rgb * lerpResult2929_g31431 );
				half Global_ColorsTex_A1701_g31431 = (temp_output_45_0_g32385).w;
				float lerpResult1720_g31431 = lerp( 1.0 , Global_ColorsTex_A1701_g31431 , _GlobalHealthiness);
				half Subsurface_Intensity1752_g31431 = ( ( _SubsurfaceValue * lerpResult1720_g31431 ) + _SubsurfaceCat );
				float lerpResult3219_g31431 = lerp( 1.0 , packedInput.ase_color.a , _SubsurfaceMaskValue);
				half Subsurface_Mask1557_g31431 = lerpResult3219_g31431;
				half3 Subsurface_Transmission884_g31431 = ( Subsurface_Color1722_g31431 * Subsurface_Intensity1752_g31431 * Subsurface_Mask1557_g31431 );
				float3 normalizeResult1983_g31431 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float dotResult785_g31431 = dot( -TVE_MainLightDirection , normalizeResult1983_g31431 );
				float saferPower1624_g31431 = max( (dotResult785_g31431*0.5 + 0.5) , 0.0001 );
				#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch1602_g31431 = 0.0;
				#else
				float staticSwitch1602_g31431 = ( pow( saferPower1624_g31431 , _SubsurfaceAngleValue ) * _SubsurfaceViewValue );
				#endif
				half Mask_Subsurface_View782_g31431 = staticSwitch1602_g31431;
				half3 Subsurface_Deferred1693_g31431 = ( Subsurface_Transmission884_g31431 * Mask_Subsurface_View782_g31431 );
				half3 Blend_AlbedoAndSubsurface149_g31431 = ( Blend_Albedo265_g31431 + Subsurface_Deferred1693_g31431 );
				half3 Global_OverlayColor1758_g31431 = (TVE_OverlayColor).rgb;
				float4 tex2DNode117_g31431 = tex2D( _MainNormalTex, Main_UVs15_g31431 );
				float2 appendResult88_g32418 = (float2(tex2DNode117_g31431.a , tex2DNode117_g31431.g));
				float2 temp_output_90_0_g32418 = ( (appendResult88_g32418*2.0 + -1.0) * _MainNormalValue );
				float2 break93_g32418 = temp_output_90_0_g32418;
				half Main_NormalY2095_g31431 = break93_g32418.y;
				half Overlay_Contrast1405_g31431 = _OverlayContrastValue;
				half Global_OverlayIntensity154_g31431 = TVE_OverlayIntensity;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32355 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32358 = localObjectPosition_UNITY_MATRIX_M14_g32355;
				float4 transform68_g32355 = mul(GetObjectToWorldMatrix(),packedInput.ase_texcoord3);
				transform68_g32355.xyz = GetAbsolutePositionWS((transform68_g32355).xyz);
				float3 appendResult95_g32355 = (float3(packedInput.ase_texcoord1.z , 0.0 , packedInput.ase_texcoord1.w));
				float4 transform62_g32355 = mul(GetObjectToWorldMatrix(),float4( ( packedInput.ase_texcoord3.xyz - ( appendResult95_g32355 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32355.xyz = GetAbsolutePositionWS((transform62_g32355).xyz);
				float3 ObjectPositionWithPivots28_g32355 = ( (transform68_g32355).xyz - (transform62_g32355).xyz );
				half3 On20_g32358 = ObjectPositionWithPivots28_g32355;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32358 = On20_g32358;
				#else
				float3 staticSwitch14_g32358 = Off19_g32358;
				#endif
				half3 ObjectData20_g32359 = staticSwitch14_g32358;
				half3 WorldData19_g32359 = Off19_g32358;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32359 = WorldData19_g32359;
				#else
				float3 staticSwitch14_g32359 = ObjectData20_g32359;
				#endif
				float3 temp_output_66_0_g32355 = staticSwitch14_g32359;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32355 = ( temp_output_66_0_g32355 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32355 = temp_output_66_0_g32355;
				#endif
				half3 ObjectData20_g32354 = staticSwitch13_g32355;
				half3 WorldData19_g32354 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32354 = WorldData19_g32354;
				#else
				float3 staticSwitch14_g32354 = ObjectData20_g32354;
				#endif
				float2 temp_output_43_38_g32352 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32354).xz ) );
				half4 Legacy33_g32353 = tex2D( TVE_ExtrasTex, temp_output_43_38_g32352 );
				half4 Vegetation33_g32353 = tex2D( TVE_ExtrasTex_Vegetation, temp_output_43_38_g32352 );
				half4 Grass33_g32353 = tex2D( TVE_ExtrasTex_Grass, temp_output_43_38_g32352 );
				half4 Objects33_g32353 = tex2D( TVE_ExtrasTex_Objects, temp_output_43_38_g32352 );
				half4 Custom33_g32353 = tex2D( TVE_ExtrasTex_User, temp_output_43_38_g32352 );
				half4 localUSE_BUFFERS33_g32353 = USE_BUFFERS( Legacy33_g32353 , Vegetation33_g32353 , Grass33_g32353 , Objects33_g32353 , Custom33_g32353 );
				float4 break49_g32352 = localUSE_BUFFERS33_g32353;
				half Global_ExtrasTex_B156_g31431 = break49_g32352.z;
				float temp_output_1025_0_g31431 = ( Global_OverlayIntensity154_g31431 * _GlobalOverlay * Global_ExtrasTex_B156_g31431 );
				float lerpResult1065_g31431 = lerp( 1.0 , packedInput.ase_color.r , _OverlayVariationValue);
				half Overlay_Commons1365_g31431 = ( temp_output_1025_0_g31431 * lerpResult1065_g31431 );
				half Overlay_Mask269_g31431 = saturate( ( saturate( ( packedInput.ase_color.a + ( Main_NormalY2095_g31431 * Overlay_Contrast1405_g31431 ) ) ) - ( 1.0 - Overlay_Commons1365_g31431 ) ) );
				float3 lerpResult336_g31431 = lerp( Blend_AlbedoAndSubsurface149_g31431 , Global_OverlayColor1758_g31431 , Overlay_Mask269_g31431);
				half3 Final_Albedo359_g31431 = lerpResult336_g31431;
				half Main_Alpha316_g31431 = (temp_output_51_0_g31431).a;
				float lerpResult354_g31431 = lerp( 1.0 , Main_Alpha316_g31431 , _render_premul);
				half Final_Premultiply355_g31431 = lerpResult354_g31431;
				float3 temp_output_410_0_g31431 = ( Final_Albedo359_g31431 * Final_Premultiply355_g31431 );
				float3 temp_cast_12 = (1.0).xxx;
				half Mesh_Occlusion318_g31431 = packedInput.ase_color.g;
				float saferPower1201_g31431 = max( Mesh_Occlusion318_g31431 , 0.0001 );
				float3 lerpResult2945_g31431 = lerp( (_VertexOcclusionColor).rgb , temp_cast_12 , saturate( pow( saferPower1201_g31431 , ( _VertexOcclusionValue + _OcclusionCat ) ) ));
				half3 Vertex_Occlusion648_g31431 = lerpResult2945_g31431;
				
				float3 appendResult91_g32418 = (float3(temp_output_90_0_g32418 , 1.0));
				half3 Main_Normal137_g31431 = appendResult91_g32418;
				float3 temp_output_13_0_g32320 = Main_Normal137_g31431;
				float3 switchResult12_g32320 = (((isFrontFace>0)?(temp_output_13_0_g32320):(( temp_output_13_0_g32320 * _render_normals_options ))));
				half3 Blend_Normal312_g31431 = switchResult12_g32320;
				half3 Final_Normal366_g31431 = Blend_Normal312_g31431;
				
				float4 tex2DNode35_g31431 = tex2D( _MainMaskTex, Main_UVs15_g31431 );
				half Main_Smoothness227_g31431 = ( tex2DNode35_g31431.a * _MainSmoothnessValue );
				half Blend_Smoothness314_g31431 = Main_Smoothness227_g31431;
				half Global_OverlaySmoothness311_g31431 = TVE_OverlaySmoothness;
				float lerpResult343_g31431 = lerp( Blend_Smoothness314_g31431 , Global_OverlaySmoothness311_g31431 , Overlay_Mask269_g31431);
				half Final_Smoothness371_g31431 = lerpResult343_g31431;
				half Global_Wetness1016_g31431 = ( TVE_Wetness * _GlobalWetness );
				half Global_ExtrasTex_A1033_g31431 = break49_g32352.w;
				float lerpResult1037_g31431 = lerp( Final_Smoothness371_g31431 , saturate( ( Final_Smoothness371_g31431 + Global_Wetness1016_g31431 ) ) , Global_ExtrasTex_A1033_g31431);
				
				float lerpResult240_g31431 = lerp( 1.0 , tex2DNode35_g31431.g , _MainOcclusionValue);
				half Main_Occlusion247_g31431 = lerpResult240_g31431;
				half Blend_Occlusion323_g31431 = Main_Occlusion247_g31431;
				
				float localCustomAlphaClip9_g32414 = ( 0.0 );
				half Main_AlphaRaw1203_g31431 = tex2DNode29_g31431.a;
				float Mesh_Variation16_g31431 = packedInput.ase_color.r;
				float lerpResult2262_g31431 = lerp( 0.9 , Mesh_Variation16_g31431 , _LeavesVariationValue);
				half Global_ExtrasTex_R174_g31431 = break49_g32352.x;
				float lerpResult2624_g31431 = lerp( 1.0 , Global_ExtrasTex_R174_g31431 , _GlobalLeaves);
				half AlphaTreshold2132_g31431 = _Cutoff;
				half Mask_Leaves315_g31431 = ( ( (lerpResult2262_g31431*0.5 + 0.5) - ( 1.0 - ( lerpResult2624_g31431 * _LocalLeaves ) ) ) + AlphaTreshold2132_g31431 );
				half Alpha5_g32414 = ( Main_AlphaRaw1203_g31431 * Mask_Leaves315_g31431 );
				float Alpha9_g32414 = Alpha5_g32414;
				#if _ALPHATEST_ON
				clip(Alpha9_g32414 - _Cutoff);
				#endif
				half Final_Clip914_g31431 = localCustomAlphaClip9_g32414;
				
				surfaceDescription.Albedo = ( temp_output_410_0_g31431 * Vertex_Occlusion648_g31431 );
				surfaceDescription.Normal = Final_Normal366_g31431;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = lerpResult1037_g31431;
				surfaceDescription.Occlusion = Blend_Occlusion323_g31431;
				surfaceDescription.Alpha = Main_Alpha316_g31431;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = Final_Clip914_g31431;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				GetSurfaceAndBuiltinData(surfaceDescription,input, V, posInput, surfaceData, builtinData);

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);
				LightTransportData lightTransportData = GetLightTransportData(surfaceData, builtinData, bsdfData);

				float4 res = float4(0.0, 0.0, 0.0, 1.0);
				if (unity_MetaFragmentControl.x)
				{
					res.rgb = clamp(pow(abs(lightTransportData.diffuseColor), saturate(unity_OneOverOutputBoost)), 0, unity_MaxOutputValue);
				}

				if (unity_MetaFragmentControl.y)
				{
					res.rgb = lightTransportData.emissiveColor;
				}

				return res;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			Cull [_CullMode]
			ZWrite On
			ZClip [_ZClip]
			ZTest LEqual
			ColorMask 0

			HLSLPROGRAM

			#define ASE_NEED_CULLFACE 1
			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#pragma multi_compile _ DOTS_INSTANCING_ON
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 70201


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_SHADOWS

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

			//#define USE_LEGACY_UNITY_MATRIX_VARIABLES

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#pragma shader_feature_local TVE_VERTEX_DATA_OBJECT TVE_VERTEX_DATA_WORLD TVE_VERTEX_DATA_BATCHED
			  
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			    
			#define TVE_IS_GRASS_SHADER
			#define TVE_PIVOT_DATA_BAKED


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;
				float4 ase_texcoord2 : TEXCOORD2;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			CBUFFER_START( UnityPerMaterial )
			half4 _NoiseTintOne;
			half4 _GradientColorOne;
			half4 _NoiseTintTwo;
			half4 _GradientColorTwo;
			float4 _MaxBoundsInfo;
			float4 _Color;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _MotionHighlightColor;
			float4 _LocalColors;
			half4 _SubsurfaceColor;
			float4 _SubsurfaceDiffusion_asset;
			half4 _VertexOcclusionColor;
			half3 _render_normals_options;
			float _MotionVariation_32;
			half _BatchingMessage;
			half _IsLitShader;
			half _IsStandardShader;
			half _PerspectiveAngleValue;
			half _PerspectiveNoiseValue;
			half _PerspectiveCat;
			half _Banner;
			half _IsGrassShader;
			half _Motion_10;
			half _Motion_Interaction;
			half _PerspectivePushValue;
			half _LocalSize;
			half _vertex_pivot_mode;
			half _GlobalSize;
			half _GradientMinValue;
			half _VertexDataMode;
			half _VertexMotionMode;
			half _VertexMotionSpace;
			half _VertexCat;
			half _Motion_32;
			half _VertexPivotMode;
			half _GlobalSizeFade;
			half _IsAnyPathShader;
			half _GradientCat;
			half _LeavesVariationValue;
			half _MainOcclusionValue;
			half _GlobalWetness;
			half _MainSmoothnessValue;
			half _OcclusionCat;
			half _VertexOcclusionValue;
			half _render_premul;
			half _OverlayVariationValue;
			half _GlobalOverlay;
			half _OverlayContrastValue;
			half _SubsurfaceViewValue;
			half _GradientMaxValue;
			half _SubsurfaceAngleValue;
			half _SubsurfaceCat;
			half _GlobalHealthiness;
			half _SubsurfaceValue;
			half _SubsurfaceLightValue;
			half _ColorsMaskValue;
			half _GlobalColors;
			half _NoiseMaxValue;
			half _NoiseMinValue;
			half _MoiseCat;
			half _NoiseScaleValue;
			half _DetailMapsMode;
			half _SubsurfaceMaskValue;
			half _DetailTypeMode;
			half _DetailCat;
			half _ObjectDataMessage;
			half _IsTVEShader;
			float _MotionScale_32;
			half _InteractionVariation;
			half _MotionAmplitude_30;
			float _material_batching;
			half _MaskMode;
			float _ObjectMetallicValue;
			float _render_normals;
			float _GrassPerspectiveNoiseValue;
			float _ObjectSmoothnessValue;
			float _render_blend;
			float _render_mode;
			float _render_priority;
			float _OverlayVariation;
			float _OverlayContrast;
			float _GrassPerspectivePushValue;
			float _ObjectOcclusionValue;
			float _SubsurfaceMinValue;
			float _GrassPerspectiveAngleValue;
			float _SubsurfaceMaxValue;
			half _GlobalSpace;
			half _DetailSpace;
			half _render_dst;
			half _render_src;
			half _render_zw;
			half _render_cutoff;
			half _render_cull;
			half _Cutoff;
			half _MotionVariation_20;
			half _VertexVariationMode;
			half _RenderingCat;
			half _GlobalLeaves;
			half _AdvancedCat;
			float _MotionScale_20;
			half _MainCat;
			float _MotionVariation_30;
			half _RenderMode;
			half _MotionAmplitude_20;
			half _MotionVariation_10;
			half _WorldDataMessage;
			float _MotionSpeed_10;
			half _DetailMode;
			half _RenderPriority;
			half _RenderBlend;
			half _GlobalCat;
			half _RenderZWrite;
			half _RenderCull;
			float _MotionSpeed_30;
			half _PivotsMessage;
			half _MotionAmplitude_10;
			float _MotionScale_10;
			float _MotionSpeed_20;
			half _RenderClip;
			half _InteractionAmplitude;
			float _MotionSpeed_32;
			float _MotionScale_30;
			half _RenderNormals;
			half _MainNormalValue;
			half _IsVersion;
			half _MotionAmplitude_32;
			half _LocalLeaves;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _MainTex;
			sampler2D TVE_MotionTex;
			half4 TVE_VolumeCoord;
			sampler2D TVE_MotionTex_Vegetation;
			sampler2D TVE_MotionTex_Grass;
			sampler2D TVE_MotionTex_Objects;
			sampler2D TVE_MotionTex_User;
			half TVE_WindPower;
			sampler2D TVE_NoiseTex;
			float2 TVE_NoiseSpeed_Vegetation;
			float2 TVE_NoiseSpeed_Grass;
			half TVE_NoiseSize_Vegetation;
			half TVE_NoiseSize_Grass;
			half TVE_NoiseContrast;
			half TVE_WindMode;
			half TVE_SizeFadeEnd;
			half TVE_SizeFadeStart;
			sampler2D TVE_ExtrasTex;
			sampler2D TVE_ExtrasTex_Vegetation;
			sampler2D TVE_ExtrasTex_Grass;
			sampler2D TVE_ExtrasTex_Objects;
			sampler2D TVE_ExtrasTex_User;
			sampler2D _MainAlbedoTex;
			SAMPLER(sampler_MainAlbedoTex);


			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			
			half4 USE_BUFFERS( half4 Legacy, half4 Vegetation, half4 Grass, half4 Objects, half4 Custom )
			{
				#if defined (TVE_IS_VEGETATION_SHADER)
				return Vegetation;
				#elif defined (TVE_IS_GRASS_SHADER)
				return Grass;
				#elif defined (TVE_IS_OBJECT_SHADER)
				return Objects;
				#elif defined (TVE_IS_CUSTOM_SHADER)
				return Custom;
				#else
				return Legacy;
				#endif
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout AlphaSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData( posInput, surfaceDescription.Alpha );
					ApplyDecalToSurfaceData( decalSurfaceData, surfaceData );
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(AlphaSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				//#ifdef _ALPHATEST_ON
				//#ifdef _ALPHATEST_SHADOW_ON
				//DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow );
				//#else
				//DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				//#endif
				//#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				half3 _Vector1 = half3(0,0,0);
				half3 Off19_g32361 = _Vector1;
				float3 appendResult2827_g31431 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				half3 Mesh_PivotsData2831_g31431 = ( appendResult2827_g31431 * _VertexPivotMode );
				half3 On20_g32361 = Mesh_PivotsData2831_g31431;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32361 = On20_g32361;
				#else
				float3 staticSwitch14_g32361 = Off19_g32361;
				#endif
				half3 ObjectData20_g32362 = staticSwitch14_g32361;
				half3 WorldData19_g32362 = Off19_g32361;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32362 = WorldData19_g32362;
				#else
				float3 staticSwitch14_g32362 = ObjectData20_g32362;
				#endif
				#ifdef TVE_VERTEX_DATA_WORLD
				float3 staticSwitch14_g32384 = _Vector1;
				#else
				float3 staticSwitch14_g32384 = staticSwitch14_g32362;
				#endif
				half3 Mesh_PivotsOS2291_g31431 = staticSwitch14_g32384;
				float3 temp_output_2283_0_g31431 = ( inputMesh.positionOS - Mesh_PivotsOS2291_g31431 );
				half3 VertexPos40_g32429 = temp_output_2283_0_g31431;
				float3 appendResult74_g32429 = (float3(VertexPos40_g32429.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g32429 = appendResult74_g32429;
				float3 break84_g32429 = VertexPos40_g32429;
				float3 appendResult81_g32429 = (float3(0.0 , break84_g32429.y , break84_g32429.z));
				half3 VertexPosOtherAxis82_g32429 = appendResult81_g32429;
				float ObjectData20_g32403 = 3.14;
				float Bounds_Height374_g31431 = _MaxBoundsInfo.y;
				float WorldData19_g32403 = ( Bounds_Height374_g31431 * 3.14 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32403 = WorldData19_g32403;
				#else
				float staticSwitch14_g32403 = ObjectData20_g32403;
				#endif
				float Motion_Max_Bending1133_g31431 = staticSwitch14_g32403;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32396 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32399 = localObjectPosition_UNITY_MATRIX_M14_g32396;
				float4 transform68_g32396 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32396.xyz = GetAbsolutePositionWS((transform68_g32396).xyz);
				float3 appendResult93_g32396 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float4 transform62_g32396 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult93_g32396 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32396.xyz = GetAbsolutePositionWS((transform62_g32396).xyz);
				float3 ObjectPositionWithPivots28_g32396 = ( (transform68_g32396).xyz - (transform62_g32396).xyz );
				half3 On20_g32399 = ObjectPositionWithPivots28_g32396;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32399 = On20_g32399;
				#else
				float3 staticSwitch14_g32399 = Off19_g32399;
				#endif
				half3 ObjectData20_g32400 = staticSwitch14_g32399;
				half3 WorldData19_g32400 = Off19_g32399;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32400 = WorldData19_g32400;
				#else
				float3 staticSwitch14_g32400 = ObjectData20_g32400;
				#endif
				float3 temp_output_66_0_g32396 = staticSwitch14_g32400;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32396 = ( temp_output_66_0_g32396 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32396 = temp_output_66_0_g32396;
				#endif
				half3 ObjectData20_g32401 = staticSwitch13_g32396;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				half3 WorldData19_g32401 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32401 = WorldData19_g32401;
				#else
				float3 staticSwitch14_g32401 = ObjectData20_g32401;
				#endif
				float2 temp_output_39_38_g32394 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32401).xz ) );
				half4 Legacy33_g32402 = tex2Dlod( TVE_MotionTex, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Vegetation33_g32402 = tex2Dlod( TVE_MotionTex_Vegetation, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Grass33_g32402 = tex2Dlod( TVE_MotionTex_Grass, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Objects33_g32402 = tex2Dlod( TVE_MotionTex_Objects, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Custom33_g32402 = tex2Dlod( TVE_MotionTex_User, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 localUSE_BUFFERS33_g32402 = USE_BUFFERS( Legacy33_g32402 , Vegetation33_g32402 , Grass33_g32402 , Objects33_g32402 , Custom33_g32402 );
				float4 break322_g32350 = localUSE_BUFFERS33_g32402;
				half Wind_Power369_g32350 = saturate( ( (break322_g32350.z*2.0 + -1.0) + TVE_WindPower ) );
				half Wind_Power_103106_g31431 = Wind_Power369_g32350;
				float3 appendResult323_g32350 = (float3(break322_g32350.x , 0.0 , break322_g32350.y));
				float3 temp_output_324_0_g32350 = (appendResult323_g32350*2.0 + -1.0);
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				float3 temp_output_339_0_g32350 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_324_0_g32350 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Wind_DirectionOS39_g31431 = (temp_output_339_0_g32350).xz;
				half Motion_Use1056_g31431 = _Motion_10;
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch160_g32370 = TVE_NoiseSpeed_Grass;
				#else
				float2 staticSwitch160_g32370 = TVE_NoiseSpeed_Vegetation;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g32372 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32375 = localObjectPosition_UNITY_MATRIX_M14_g32372;
				float4 transform68_g32372 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32372.xyz = GetAbsolutePositionWS((transform68_g32372).xyz);
				float3 appendResult95_g32372 = (float3(inputMesh.ase_texcoord.z , 0.0 , inputMesh.ase_texcoord.w));
				float4 transform62_g32372 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32372 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32372.xyz = GetAbsolutePositionWS((transform62_g32372).xyz);
				float3 ObjectPositionWithPivots28_g32372 = ( (transform68_g32372).xyz - (transform62_g32372).xyz );
				half3 On20_g32375 = ObjectPositionWithPivots28_g32372;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32375 = On20_g32375;
				#else
				float3 staticSwitch14_g32375 = Off19_g32375;
				#endif
				half3 ObjectData20_g32376 = staticSwitch14_g32375;
				half3 WorldData19_g32376 = Off19_g32375;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32376 = WorldData19_g32376;
				#else
				float3 staticSwitch14_g32376 = ObjectData20_g32376;
				#endif
				float3 temp_output_66_0_g32372 = staticSwitch14_g32376;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32372 = ( temp_output_66_0_g32372 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32372 = temp_output_66_0_g32372;
				#endif
				half3 ObjectData20_g32371 = staticSwitch13_g32372;
				half3 WorldData19_g32371 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32371 = WorldData19_g32371;
				#else
				float3 staticSwitch14_g32371 = ObjectData20_g32371;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch164_g32370 = (ase_worldPos).xz;
				#else
				float2 staticSwitch164_g32370 = (staticSwitch14_g32371).xz;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float staticSwitch161_g32370 = TVE_NoiseSize_Grass;
				#else
				float staticSwitch161_g32370 = TVE_NoiseSize_Vegetation;
				#endif
				float2 panner73_g32370 = ( _TimeParameters.x * staticSwitch160_g32370 + ( staticSwitch164_g32370 * staticSwitch161_g32370 ));
				float4 tex2DNode75_g32370 = tex2Dlod( TVE_NoiseTex, float4( panner73_g32370, 0, 0.0) );
				float4 saferPower77_g32370 = max( abs( tex2DNode75_g32370 ) , 0.0001 );
				float4 temp_cast_9 = (TVE_NoiseContrast).xxxx;
				float4 break142_g32370 = pow( saferPower77_g32370 , temp_cast_9 );
				half Global_NoiseTex_R34_g31431 = break142_g32370.r;
				half Input_Speed62_g32427 = _MotionSpeed_10;
				float mulTime373_g32427 = _TimeParameters.x * Input_Speed62_g32427;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32409 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32412 = localObjectPosition_UNITY_MATRIX_M14_g32409;
				float4 transform68_g32409 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32409.xyz = GetAbsolutePositionWS((transform68_g32409).xyz);
				float3 appendResult95_g32409 = (float3(inputMesh.ase_texcoord.z , 0.0 , inputMesh.ase_texcoord.w));
				float4 transform62_g32409 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32409 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32409.xyz = GetAbsolutePositionWS((transform62_g32409).xyz);
				float3 ObjectPositionWithPivots28_g32409 = ( (transform68_g32409).xyz - (transform62_g32409).xyz );
				half3 On20_g32412 = ObjectPositionWithPivots28_g32409;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32412 = On20_g32412;
				#else
				float3 staticSwitch14_g32412 = Off19_g32412;
				#endif
				half3 ObjectData20_g32413 = staticSwitch14_g32412;
				half3 WorldData19_g32413 = Off19_g32412;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32413 = WorldData19_g32413;
				#else
				float3 staticSwitch14_g32413 = ObjectData20_g32413;
				#endif
				float3 temp_output_66_0_g32409 = staticSwitch14_g32413;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32409 = ( temp_output_66_0_g32409 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32409 = temp_output_66_0_g32409;
				#endif
				float3 break9_g32409 = staticSwitch13_g32409;
				half Variation_Complex102_g32406 = frac( ( inputMesh.ase_color.r + ( break9_g32409.x + break9_g32409.z ) ) );
				float ObjectData20_g32408 = Variation_Complex102_g32406;
				half Variation_Simple105_g32406 = inputMesh.ase_color.r;
				float WorldData19_g32408 = Variation_Simple105_g32406;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32408 = WorldData19_g32408;
				#else
				float staticSwitch14_g32408 = ObjectData20_g32408;
				#endif
				half Variation3073_g31431 = staticSwitch14_g32408;
				half Motion_Variation284_g32427 = ( _MotionVariation_10 * Variation3073_g31431 );
				float2 appendResult344_g32427 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 Motion_Scale287_g32427 = ( _MotionScale_10 * appendResult344_g32427 );
				half2 Sine_MinusOneToOne281_g32427 = sin( ( mulTime373_g32427 + Motion_Variation284_g32427 + Motion_Scale287_g32427 ) );
				float2 temp_cast_11 = (1.0).xx;
				half Input_Turbulence327_g32427 = Global_NoiseTex_R34_g31431;
				float2 lerpResult321_g32427 = lerp( Sine_MinusOneToOne281_g32427 , temp_cast_11 , Input_Turbulence327_g32427);
				half2 Motion_Bending2258_g31431 = ( ( _MotionAmplitude_10 * Motion_Max_Bending1133_g31431 ) * Wind_Power_103106_g31431 * Wind_DirectionOS39_g31431 * Motion_Use1056_g31431 * Global_NoiseTex_R34_g31431 * lerpResult321_g32427 );
				half Motion_UseInteraction2097_g31431 = _Motion_Interaction;
				half Motion_InteractionMask66_g31431 = break322_g32350.w;
				float lerpResult3307_g31431 = lerp( 1.0 , Variation3073_g31431 , _InteractionVariation);
				half2 Motion_Interaction53_g31431 = ( _InteractionAmplitude * Motion_Max_Bending1133_g31431 * Motion_UseInteraction2097_g31431 * Motion_InteractionMask66_g31431 * Motion_InteractionMask66_g31431 * Wind_DirectionOS39_g31431 * lerpResult3307_g31431 );
				float2 lerpResult109_g31431 = lerp( Motion_Bending2258_g31431 , Motion_Interaction53_g31431 , Motion_InteractionMask66_g31431);
				half Mesh_Motion_182_g31431 = inputMesh.ase_texcoord3.x;
				float2 break143_g31431 = ( lerpResult109_g31431 * Mesh_Motion_182_g31431 );
				half Motion_Z190_g31431 = break143_g31431.y;
				half Angle44_g32429 = Motion_Z190_g31431;
				half3 VertexPos40_g32421 = ( VertexPosRotationAxis50_g32429 + ( VertexPosOtherAxis82_g32429 * cos( Angle44_g32429 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g32429 ) * sin( Angle44_g32429 ) ) );
				float3 appendResult74_g32421 = (float3(0.0 , 0.0 , VertexPos40_g32421.z));
				half3 VertexPosRotationAxis50_g32421 = appendResult74_g32421;
				float3 break84_g32421 = VertexPos40_g32421;
				float3 appendResult81_g32421 = (float3(break84_g32421.x , break84_g32421.y , 0.0));
				half3 VertexPosOtherAxis82_g32421 = appendResult81_g32421;
				half Motion_X216_g31431 = break143_g31431.x;
				half Angle44_g32421 = -Motion_X216_g31431;
				half Motion_Scale321_g32419 = ( _MotionScale_32 * 10.0 );
				half Input_Speed62_g32419 = _MotionSpeed_32;
				float mulTime349_g32419 = _TimeParameters.x * Input_Speed62_g32419;
				float Motion_Variation330_g32419 = ( _MotionVariation_32 * inputMesh.ase_color.r );
				float Bounds_Radius121_g31431 = _MaxBoundsInfo.x;
				half Input_Amplitude58_g32419 = ( _MotionAmplitude_32 * Bounds_Radius121_g31431 * 0.1 );
				float3 appendResult345_g32419 = (float3(inputMesh.ase_color.r , ( 1.0 - inputMesh.ase_color.r ) , inputMesh.ase_color.r));
				half Global_NoiseTex_B132_g31431 = break142_g32370.b;
				half Mesh_Motion_3144_g31431 = inputMesh.ase_texcoord3.z;
				half Motion_Use322013_g31431 = _Motion_32;
				float lerpResult376_g32350 = lerp( 0.1 , 1.0 , Wind_Power369_g32350);
				half Wind_Power_323115_g31431 = lerpResult376_g32350;
				half3 Motion_Flutter263_g31431 = ( ( sin( ( ( ( ase_worldPos.x + ase_worldPos.y + ase_worldPos.z ) * Motion_Scale321_g32419 ) + mulTime349_g32419 + Motion_Variation330_g32419 ) ) * Input_Amplitude58_g32419 * appendResult345_g32419 ) * ( ( Global_NoiseTex_R34_g31431 + Global_NoiseTex_B132_g31431 ) * Mesh_Motion_3144_g31431 * Motion_Use322013_g31431 * Wind_Power_323115_g31431 ) );
				half Wind_Mode3167_g31431 = TVE_WindMode;
				float3 lerpResult3168_g31431 = lerp( inputMesh.positionOS , ( ( VertexPosRotationAxis50_g32421 + ( VertexPosOtherAxis82_g32421 * cos( Angle44_g32421 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g32421 ) * sin( Angle44_g32421 ) ) ) + Motion_Flutter263_g31431 ) , Wind_Mode3167_g31431);
				float3 Vertex_Motion_Object833_g31431 = lerpResult3168_g31431;
				float3 appendResult2043_g31431 = (float3(Motion_X216_g31431 , 0.0 , Motion_Z190_g31431));
				float3 lerpResult3173_g31431 = lerp( inputMesh.positionOS , ( ( inputMesh.positionOS + appendResult2043_g31431 ) + Motion_Flutter263_g31431 ) , Wind_Mode3167_g31431);
				float3 Vertex_Motion_World1118_g31431 = lerpResult3173_g31431;
				float3 temp_output_3331_0_g31431 = ( ( _VertexCat * _VertexMotionSpace * _VertexMotionMode * _VertexDataMode ) + Vertex_Motion_World1118_g31431 );
				#if defined(TVE_VERTEX_DATA_OBJECT)
				float3 staticSwitch3312_g31431 = Vertex_Motion_Object833_g31431;
				#elif defined(TVE_VERTEX_DATA_WORLD)
				float3 staticSwitch3312_g31431 = temp_output_3331_0_g31431;
				#elif defined(TVE_VERTEX_DATA_BATCHED)
				float3 staticSwitch3312_g31431 = temp_output_3331_0_g31431;
				#else
				float3 staticSwitch3312_g31431 = Vertex_Motion_Object833_g31431;
				#endif
				half3 ObjectData20_g32349 = staticSwitch3312_g31431;
				half3 WorldData19_g32349 = Vertex_Motion_World1118_g31431;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32349 = WorldData19_g32349;
				#else
				float3 staticSwitch14_g32349 = ObjectData20_g32349;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g32365 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32368 = localObjectPosition_UNITY_MATRIX_M14_g32365;
				float4 transform68_g32365 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32365.xyz = GetAbsolutePositionWS((transform68_g32365).xyz);
				float3 appendResult93_g32365 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float4 transform62_g32365 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult93_g32365 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32365.xyz = GetAbsolutePositionWS((transform62_g32365).xyz);
				float3 ObjectPositionWithPivots28_g32365 = ( (transform68_g32365).xyz - (transform62_g32365).xyz );
				half3 On20_g32368 = ObjectPositionWithPivots28_g32365;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32368 = On20_g32368;
				#else
				float3 staticSwitch14_g32368 = Off19_g32368;
				#endif
				half3 ObjectData20_g32369 = staticSwitch14_g32368;
				half3 WorldData19_g32369 = Off19_g32368;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32369 = WorldData19_g32369;
				#else
				float3 staticSwitch14_g32369 = ObjectData20_g32369;
				#endif
				float3 temp_output_66_0_g32365 = staticSwitch14_g32369;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32365 = ( temp_output_66_0_g32365 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32365 = temp_output_66_0_g32365;
				#endif
				float temp_output_7_0_g32416 = TVE_SizeFadeEnd;
				float ObjectData20_g32364 = saturate( ( ( ( distance( _WorldSpaceCameraPos , staticSwitch13_g32365 ) * _GlobalSizeFade ) - temp_output_7_0_g32416 ) / ( TVE_SizeFadeStart - temp_output_7_0_g32416 ) ) );
				float WorldData19_g32364 = 1.0;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32364 = WorldData19_g32364;
				#else
				float staticSwitch14_g32364 = ObjectData20_g32364;
				#endif
				float Vertex_SizeFade1740_g31431 = staticSwitch14_g32364;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32355 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32358 = localObjectPosition_UNITY_MATRIX_M14_g32355;
				float4 transform68_g32355 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32355.xyz = GetAbsolutePositionWS((transform68_g32355).xyz);
				float3 appendResult95_g32355 = (float3(inputMesh.ase_texcoord.z , 0.0 , inputMesh.ase_texcoord.w));
				float4 transform62_g32355 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32355 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32355.xyz = GetAbsolutePositionWS((transform62_g32355).xyz);
				float3 ObjectPositionWithPivots28_g32355 = ( (transform68_g32355).xyz - (transform62_g32355).xyz );
				half3 On20_g32358 = ObjectPositionWithPivots28_g32355;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32358 = On20_g32358;
				#else
				float3 staticSwitch14_g32358 = Off19_g32358;
				#endif
				half3 ObjectData20_g32359 = staticSwitch14_g32358;
				half3 WorldData19_g32359 = Off19_g32358;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32359 = WorldData19_g32359;
				#else
				float3 staticSwitch14_g32359 = ObjectData20_g32359;
				#endif
				float3 temp_output_66_0_g32355 = staticSwitch14_g32359;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32355 = ( temp_output_66_0_g32355 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32355 = temp_output_66_0_g32355;
				#endif
				half3 ObjectData20_g32354 = staticSwitch13_g32355;
				half3 WorldData19_g32354 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32354 = WorldData19_g32354;
				#else
				float3 staticSwitch14_g32354 = ObjectData20_g32354;
				#endif
				float2 temp_output_43_38_g32352 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32354).xz ) );
				half4 Legacy33_g32353 = tex2Dlod( TVE_ExtrasTex, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Vegetation33_g32353 = tex2Dlod( TVE_ExtrasTex_Vegetation, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Grass33_g32353 = tex2Dlod( TVE_ExtrasTex_Grass, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Objects33_g32353 = tex2Dlod( TVE_ExtrasTex_Objects, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Custom33_g32353 = tex2Dlod( TVE_ExtrasTex_User, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 localUSE_BUFFERS33_g32353 = USE_BUFFERS( Legacy33_g32353 , Vegetation33_g32353 , Grass33_g32353 , Objects33_g32353 , Custom33_g32353 );
				float4 break49_g32352 = localUSE_BUFFERS33_g32353;
				half Global_ExtrasTex_G305_g31431 = break49_g32352.y;
				float lerpResult346_g31431 = lerp( 1.0 , Global_ExtrasTex_G305_g31431 , _GlobalSize);
				float ObjectData20_g32363 = ( lerpResult346_g31431 * _LocalSize );
				float WorldData19_g32363 = 1.0;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32363 = WorldData19_g32363;
				#else
				float staticSwitch14_g32363 = ObjectData20_g32363;
				#endif
				half Vertex_Size1741_g31431 = staticSwitch14_g32363;
				float3 normalizeResult2696_g31431 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 break2709_g31431 = cross( normalizeResult2696_g31431 , half3(0,1,0) );
				float3 appendResult2710_g31431 = (float3(-break2709_g31431.z , 0.0 , break2709_g31431.x));
				float3 appendResult2667_g31431 = (float3(inputMesh.ase_color.r , 0.5 , inputMesh.ase_color.r));
				float3 normalizeResult2210_g31431 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float dotResult2212_g31431 = dot( normalizeResult2210_g31431 , float3(0,1,0) );
				half Mask_HView2656_g31431 = abs( dotResult2212_g31431 );
				float saferPower2652_g31431 = max( Mask_HView2656_g31431 , 0.0001 );
				half3 Grass_Coverage2661_g31431 = ( ( ( mul( GetWorldToObjectMatrix(), float4( appendResult2710_g31431 , 0.0 ) ).xyz * ( _PerspectivePushValue + _PerspectiveCat ) ) + ( (appendResult2667_g31431*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * inputMesh.ase_color.a * pow( saferPower2652_g31431 , _PerspectiveAngleValue ) );
				float3 Final_VertexPosition890_g31431 = ( ( staticSwitch14_g32349 * Vertex_SizeFade1740_g31431 * Vertex_Size1741_g31431 ) + Mesh_PivotsOS2291_g31431 + Grass_Coverage2661_g31431 );
				
				outputPackedVaryingsMeshToPS.ase_texcoord1 = inputMesh.ase_texcoord;
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;
				outputPackedVaryingsMeshToPS.ase_texcoord2 = float4(inputMesh.positionOS,1);

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Final_VertexPosition890_g31431;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif
			
			void Frag( PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target0
							#ifdef WRITE_MSAA_DEPTH
							, out float1 depthColor : SV_Target1
							#endif
						#elif defined(WRITE_MSAA_DEPTH)
						, out float4 outNormalBuffer : SV_Target0
						, out float1 depthColor : SV_Target1
						#elif defined(SCENESELECTIONPASS)
						, out float4 outColor : SV_Target0
						#endif
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS = packedInput.interp00.xyz;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				AlphaSurfaceDescription surfaceDescription = (AlphaSurfaceDescription)0;
				half2 Main_UVs15_g31431 = ( ( packedInput.ase_texcoord1.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g31431 = tex2D( _MainAlbedoTex, Main_UVs15_g31431 );
				float4 temp_output_51_0_g31431 = ( _MainColor * tex2DNode29_g31431 );
				half Main_Alpha316_g31431 = (temp_output_51_0_g31431).a;
				
				float localCustomAlphaClip9_g32414 = ( 0.0 );
				half Main_AlphaRaw1203_g31431 = tex2DNode29_g31431.a;
				float Mesh_Variation16_g31431 = packedInput.ase_color.r;
				float lerpResult2262_g31431 = lerp( 0.9 , Mesh_Variation16_g31431 , _LeavesVariationValue);
				float3 localObjectPosition_UNITY_MATRIX_M14_g32355 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32358 = localObjectPosition_UNITY_MATRIX_M14_g32355;
				float4 transform68_g32355 = mul(GetObjectToWorldMatrix(),packedInput.ase_texcoord2);
				transform68_g32355.xyz = GetAbsolutePositionWS((transform68_g32355).xyz);
				float3 appendResult95_g32355 = (float3(packedInput.ase_texcoord1.z , 0.0 , packedInput.ase_texcoord1.w));
				float4 transform62_g32355 = mul(GetObjectToWorldMatrix(),float4( ( packedInput.ase_texcoord2.xyz - ( appendResult95_g32355 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32355.xyz = GetAbsolutePositionWS((transform62_g32355).xyz);
				float3 ObjectPositionWithPivots28_g32355 = ( (transform68_g32355).xyz - (transform62_g32355).xyz );
				half3 On20_g32358 = ObjectPositionWithPivots28_g32355;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32358 = On20_g32358;
				#else
				float3 staticSwitch14_g32358 = Off19_g32358;
				#endif
				half3 ObjectData20_g32359 = staticSwitch14_g32358;
				half3 WorldData19_g32359 = Off19_g32358;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32359 = WorldData19_g32359;
				#else
				float3 staticSwitch14_g32359 = ObjectData20_g32359;
				#endif
				float3 temp_output_66_0_g32355 = staticSwitch14_g32359;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32355 = ( temp_output_66_0_g32355 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32355 = temp_output_66_0_g32355;
				#endif
				half3 ObjectData20_g32354 = staticSwitch13_g32355;
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				half3 WorldData19_g32354 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32354 = WorldData19_g32354;
				#else
				float3 staticSwitch14_g32354 = ObjectData20_g32354;
				#endif
				float2 temp_output_43_38_g32352 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32354).xz ) );
				half4 Legacy33_g32353 = tex2D( TVE_ExtrasTex, temp_output_43_38_g32352 );
				half4 Vegetation33_g32353 = tex2D( TVE_ExtrasTex_Vegetation, temp_output_43_38_g32352 );
				half4 Grass33_g32353 = tex2D( TVE_ExtrasTex_Grass, temp_output_43_38_g32352 );
				half4 Objects33_g32353 = tex2D( TVE_ExtrasTex_Objects, temp_output_43_38_g32352 );
				half4 Custom33_g32353 = tex2D( TVE_ExtrasTex_User, temp_output_43_38_g32352 );
				half4 localUSE_BUFFERS33_g32353 = USE_BUFFERS( Legacy33_g32353 , Vegetation33_g32353 , Grass33_g32353 , Objects33_g32353 , Custom33_g32353 );
				float4 break49_g32352 = localUSE_BUFFERS33_g32353;
				half Global_ExtrasTex_R174_g31431 = break49_g32352.x;
				float lerpResult2624_g31431 = lerp( 1.0 , Global_ExtrasTex_R174_g31431 , _GlobalLeaves);
				half AlphaTreshold2132_g31431 = _Cutoff;
				half Mask_Leaves315_g31431 = ( ( (lerpResult2262_g31431*0.5 + 0.5) - ( 1.0 - ( lerpResult2624_g31431 * _LocalLeaves ) ) ) + AlphaTreshold2132_g31431 );
				half Alpha5_g32414 = ( Main_AlphaRaw1203_g31431 * Mask_Leaves315_g31431 );
				float Alpha9_g32414 = Alpha5_g32414;
				#if _ALPHATEST_ON
				clip(Alpha9_g32414 - _Cutoff);
				#endif
				half Final_Clip914_g31431 = localCustomAlphaClip9_g32414;
				
				surfaceDescription.Alpha = Main_Alpha316_g31431;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = Final_Clip914_g31431;
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
				surfaceDescription.AlphaClipThresholdShadow = 0.5;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }
			ColorMask 0

			HLSLPROGRAM

			#define ASE_NEED_CULLFACE 1
			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#pragma multi_compile _ DOTS_INSTANCING_ON
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 70201


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
			#define SCENESELECTIONPASS
			#pragma editor_sync_compilation

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#pragma shader_feature_local TVE_VERTEX_DATA_OBJECT TVE_VERTEX_DATA_WORLD TVE_VERTEX_DATA_BATCHED
			  
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			    
			#define TVE_IS_GRASS_SHADER
			#define TVE_PIVOT_DATA_BAKED


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;
				float4 ase_texcoord2 : TEXCOORD2;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			int _ObjectId;
			int _PassValue;

			CBUFFER_START( UnityPerMaterial )
			half4 _NoiseTintOne;
			half4 _GradientColorOne;
			half4 _NoiseTintTwo;
			half4 _GradientColorTwo;
			float4 _MaxBoundsInfo;
			float4 _Color;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _MotionHighlightColor;
			float4 _LocalColors;
			half4 _SubsurfaceColor;
			float4 _SubsurfaceDiffusion_asset;
			half4 _VertexOcclusionColor;
			half3 _render_normals_options;
			float _MotionVariation_32;
			half _BatchingMessage;
			half _IsLitShader;
			half _IsStandardShader;
			half _PerspectiveAngleValue;
			half _PerspectiveNoiseValue;
			half _PerspectiveCat;
			half _Banner;
			half _IsGrassShader;
			half _Motion_10;
			half _Motion_Interaction;
			half _PerspectivePushValue;
			half _LocalSize;
			half _vertex_pivot_mode;
			half _GlobalSize;
			half _GradientMinValue;
			half _VertexDataMode;
			half _VertexMotionMode;
			half _VertexMotionSpace;
			half _VertexCat;
			half _Motion_32;
			half _VertexPivotMode;
			half _GlobalSizeFade;
			half _IsAnyPathShader;
			half _GradientCat;
			half _LeavesVariationValue;
			half _MainOcclusionValue;
			half _GlobalWetness;
			half _MainSmoothnessValue;
			half _OcclusionCat;
			half _VertexOcclusionValue;
			half _render_premul;
			half _OverlayVariationValue;
			half _GlobalOverlay;
			half _OverlayContrastValue;
			half _SubsurfaceViewValue;
			half _GradientMaxValue;
			half _SubsurfaceAngleValue;
			half _SubsurfaceCat;
			half _GlobalHealthiness;
			half _SubsurfaceValue;
			half _SubsurfaceLightValue;
			half _ColorsMaskValue;
			half _GlobalColors;
			half _NoiseMaxValue;
			half _NoiseMinValue;
			half _MoiseCat;
			half _NoiseScaleValue;
			half _DetailMapsMode;
			half _SubsurfaceMaskValue;
			half _DetailTypeMode;
			half _DetailCat;
			half _ObjectDataMessage;
			half _IsTVEShader;
			float _MotionScale_32;
			half _InteractionVariation;
			half _MotionAmplitude_30;
			float _material_batching;
			half _MaskMode;
			float _ObjectMetallicValue;
			float _render_normals;
			float _GrassPerspectiveNoiseValue;
			float _ObjectSmoothnessValue;
			float _render_blend;
			float _render_mode;
			float _render_priority;
			float _OverlayVariation;
			float _OverlayContrast;
			float _GrassPerspectivePushValue;
			float _ObjectOcclusionValue;
			float _SubsurfaceMinValue;
			float _GrassPerspectiveAngleValue;
			float _SubsurfaceMaxValue;
			half _GlobalSpace;
			half _DetailSpace;
			half _render_dst;
			half _render_src;
			half _render_zw;
			half _render_cutoff;
			half _render_cull;
			half _Cutoff;
			half _MotionVariation_20;
			half _VertexVariationMode;
			half _RenderingCat;
			half _GlobalLeaves;
			half _AdvancedCat;
			float _MotionScale_20;
			half _MainCat;
			float _MotionVariation_30;
			half _RenderMode;
			half _MotionAmplitude_20;
			half _MotionVariation_10;
			half _WorldDataMessage;
			float _MotionSpeed_10;
			half _DetailMode;
			half _RenderPriority;
			half _RenderBlend;
			half _GlobalCat;
			half _RenderZWrite;
			half _RenderCull;
			float _MotionSpeed_30;
			half _PivotsMessage;
			half _MotionAmplitude_10;
			float _MotionScale_10;
			float _MotionSpeed_20;
			half _RenderClip;
			half _InteractionAmplitude;
			float _MotionSpeed_32;
			float _MotionScale_30;
			half _RenderNormals;
			half _MainNormalValue;
			half _IsVersion;
			half _MotionAmplitude_32;
			half _LocalLeaves;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			sampler2D _MainTex;
			sampler2D TVE_MotionTex;
			half4 TVE_VolumeCoord;
			sampler2D TVE_MotionTex_Vegetation;
			sampler2D TVE_MotionTex_Grass;
			sampler2D TVE_MotionTex_Objects;
			sampler2D TVE_MotionTex_User;
			half TVE_WindPower;
			sampler2D TVE_NoiseTex;
			float2 TVE_NoiseSpeed_Vegetation;
			float2 TVE_NoiseSpeed_Grass;
			half TVE_NoiseSize_Vegetation;
			half TVE_NoiseSize_Grass;
			half TVE_NoiseContrast;
			half TVE_WindMode;
			half TVE_SizeFadeEnd;
			half TVE_SizeFadeStart;
			sampler2D TVE_ExtrasTex;
			sampler2D TVE_ExtrasTex_Vegetation;
			sampler2D TVE_ExtrasTex_Grass;
			sampler2D TVE_ExtrasTex_Objects;
			sampler2D TVE_ExtrasTex_User;
			sampler2D _MainAlbedoTex;
			SAMPLER(sampler_MainAlbedoTex);


			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			
			half4 USE_BUFFERS( half4 Legacy, half4 Vegetation, half4 Grass, half4 Objects, half4 Custom )
			{
				#if defined (TVE_IS_VEGETATION_SHADER)
				return Vegetation;
				#elif defined (TVE_IS_GRASS_SHADER)
				return Grass;
				#elif defined (TVE_IS_OBJECT_SHADER)
				return Objects;
				#elif defined (TVE_IS_CUSTOM_SHADER)
				return Custom;
				#else
				return Legacy;
				#endif
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout SceneSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData( posInput, surfaceDescription.Alpha );
					ApplyDecalToSurfaceData( decalSurfaceData, surfaceData );
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(SceneSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				//#ifdef _ALPHATEST_ON
				//DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				//#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				half3 _Vector1 = half3(0,0,0);
				half3 Off19_g32361 = _Vector1;
				float3 appendResult2827_g31431 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				half3 Mesh_PivotsData2831_g31431 = ( appendResult2827_g31431 * _VertexPivotMode );
				half3 On20_g32361 = Mesh_PivotsData2831_g31431;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32361 = On20_g32361;
				#else
				float3 staticSwitch14_g32361 = Off19_g32361;
				#endif
				half3 ObjectData20_g32362 = staticSwitch14_g32361;
				half3 WorldData19_g32362 = Off19_g32361;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32362 = WorldData19_g32362;
				#else
				float3 staticSwitch14_g32362 = ObjectData20_g32362;
				#endif
				#ifdef TVE_VERTEX_DATA_WORLD
				float3 staticSwitch14_g32384 = _Vector1;
				#else
				float3 staticSwitch14_g32384 = staticSwitch14_g32362;
				#endif
				half3 Mesh_PivotsOS2291_g31431 = staticSwitch14_g32384;
				float3 temp_output_2283_0_g31431 = ( inputMesh.positionOS - Mesh_PivotsOS2291_g31431 );
				half3 VertexPos40_g32429 = temp_output_2283_0_g31431;
				float3 appendResult74_g32429 = (float3(VertexPos40_g32429.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g32429 = appendResult74_g32429;
				float3 break84_g32429 = VertexPos40_g32429;
				float3 appendResult81_g32429 = (float3(0.0 , break84_g32429.y , break84_g32429.z));
				half3 VertexPosOtherAxis82_g32429 = appendResult81_g32429;
				float ObjectData20_g32403 = 3.14;
				float Bounds_Height374_g31431 = _MaxBoundsInfo.y;
				float WorldData19_g32403 = ( Bounds_Height374_g31431 * 3.14 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32403 = WorldData19_g32403;
				#else
				float staticSwitch14_g32403 = ObjectData20_g32403;
				#endif
				float Motion_Max_Bending1133_g31431 = staticSwitch14_g32403;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32396 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32399 = localObjectPosition_UNITY_MATRIX_M14_g32396;
				float4 transform68_g32396 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32396.xyz = GetAbsolutePositionWS((transform68_g32396).xyz);
				float3 appendResult93_g32396 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float4 transform62_g32396 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult93_g32396 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32396.xyz = GetAbsolutePositionWS((transform62_g32396).xyz);
				float3 ObjectPositionWithPivots28_g32396 = ( (transform68_g32396).xyz - (transform62_g32396).xyz );
				half3 On20_g32399 = ObjectPositionWithPivots28_g32396;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32399 = On20_g32399;
				#else
				float3 staticSwitch14_g32399 = Off19_g32399;
				#endif
				half3 ObjectData20_g32400 = staticSwitch14_g32399;
				half3 WorldData19_g32400 = Off19_g32399;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32400 = WorldData19_g32400;
				#else
				float3 staticSwitch14_g32400 = ObjectData20_g32400;
				#endif
				float3 temp_output_66_0_g32396 = staticSwitch14_g32400;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32396 = ( temp_output_66_0_g32396 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32396 = temp_output_66_0_g32396;
				#endif
				half3 ObjectData20_g32401 = staticSwitch13_g32396;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				half3 WorldData19_g32401 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32401 = WorldData19_g32401;
				#else
				float3 staticSwitch14_g32401 = ObjectData20_g32401;
				#endif
				float2 temp_output_39_38_g32394 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32401).xz ) );
				half4 Legacy33_g32402 = tex2Dlod( TVE_MotionTex, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Vegetation33_g32402 = tex2Dlod( TVE_MotionTex_Vegetation, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Grass33_g32402 = tex2Dlod( TVE_MotionTex_Grass, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Objects33_g32402 = tex2Dlod( TVE_MotionTex_Objects, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Custom33_g32402 = tex2Dlod( TVE_MotionTex_User, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 localUSE_BUFFERS33_g32402 = USE_BUFFERS( Legacy33_g32402 , Vegetation33_g32402 , Grass33_g32402 , Objects33_g32402 , Custom33_g32402 );
				float4 break322_g32350 = localUSE_BUFFERS33_g32402;
				half Wind_Power369_g32350 = saturate( ( (break322_g32350.z*2.0 + -1.0) + TVE_WindPower ) );
				half Wind_Power_103106_g31431 = Wind_Power369_g32350;
				float3 appendResult323_g32350 = (float3(break322_g32350.x , 0.0 , break322_g32350.y));
				float3 temp_output_324_0_g32350 = (appendResult323_g32350*2.0 + -1.0);
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				float3 temp_output_339_0_g32350 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_324_0_g32350 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Wind_DirectionOS39_g31431 = (temp_output_339_0_g32350).xz;
				half Motion_Use1056_g31431 = _Motion_10;
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch160_g32370 = TVE_NoiseSpeed_Grass;
				#else
				float2 staticSwitch160_g32370 = TVE_NoiseSpeed_Vegetation;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g32372 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32375 = localObjectPosition_UNITY_MATRIX_M14_g32372;
				float4 transform68_g32372 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32372.xyz = GetAbsolutePositionWS((transform68_g32372).xyz);
				float3 appendResult95_g32372 = (float3(inputMesh.ase_texcoord.z , 0.0 , inputMesh.ase_texcoord.w));
				float4 transform62_g32372 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32372 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32372.xyz = GetAbsolutePositionWS((transform62_g32372).xyz);
				float3 ObjectPositionWithPivots28_g32372 = ( (transform68_g32372).xyz - (transform62_g32372).xyz );
				half3 On20_g32375 = ObjectPositionWithPivots28_g32372;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32375 = On20_g32375;
				#else
				float3 staticSwitch14_g32375 = Off19_g32375;
				#endif
				half3 ObjectData20_g32376 = staticSwitch14_g32375;
				half3 WorldData19_g32376 = Off19_g32375;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32376 = WorldData19_g32376;
				#else
				float3 staticSwitch14_g32376 = ObjectData20_g32376;
				#endif
				float3 temp_output_66_0_g32372 = staticSwitch14_g32376;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32372 = ( temp_output_66_0_g32372 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32372 = temp_output_66_0_g32372;
				#endif
				half3 ObjectData20_g32371 = staticSwitch13_g32372;
				half3 WorldData19_g32371 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32371 = WorldData19_g32371;
				#else
				float3 staticSwitch14_g32371 = ObjectData20_g32371;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch164_g32370 = (ase_worldPos).xz;
				#else
				float2 staticSwitch164_g32370 = (staticSwitch14_g32371).xz;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float staticSwitch161_g32370 = TVE_NoiseSize_Grass;
				#else
				float staticSwitch161_g32370 = TVE_NoiseSize_Vegetation;
				#endif
				float2 panner73_g32370 = ( _TimeParameters.x * staticSwitch160_g32370 + ( staticSwitch164_g32370 * staticSwitch161_g32370 ));
				float4 tex2DNode75_g32370 = tex2Dlod( TVE_NoiseTex, float4( panner73_g32370, 0, 0.0) );
				float4 saferPower77_g32370 = max( abs( tex2DNode75_g32370 ) , 0.0001 );
				float4 temp_cast_9 = (TVE_NoiseContrast).xxxx;
				float4 break142_g32370 = pow( saferPower77_g32370 , temp_cast_9 );
				half Global_NoiseTex_R34_g31431 = break142_g32370.r;
				half Input_Speed62_g32427 = _MotionSpeed_10;
				float mulTime373_g32427 = _TimeParameters.x * Input_Speed62_g32427;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32409 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32412 = localObjectPosition_UNITY_MATRIX_M14_g32409;
				float4 transform68_g32409 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32409.xyz = GetAbsolutePositionWS((transform68_g32409).xyz);
				float3 appendResult95_g32409 = (float3(inputMesh.ase_texcoord.z , 0.0 , inputMesh.ase_texcoord.w));
				float4 transform62_g32409 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32409 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32409.xyz = GetAbsolutePositionWS((transform62_g32409).xyz);
				float3 ObjectPositionWithPivots28_g32409 = ( (transform68_g32409).xyz - (transform62_g32409).xyz );
				half3 On20_g32412 = ObjectPositionWithPivots28_g32409;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32412 = On20_g32412;
				#else
				float3 staticSwitch14_g32412 = Off19_g32412;
				#endif
				half3 ObjectData20_g32413 = staticSwitch14_g32412;
				half3 WorldData19_g32413 = Off19_g32412;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32413 = WorldData19_g32413;
				#else
				float3 staticSwitch14_g32413 = ObjectData20_g32413;
				#endif
				float3 temp_output_66_0_g32409 = staticSwitch14_g32413;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32409 = ( temp_output_66_0_g32409 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32409 = temp_output_66_0_g32409;
				#endif
				float3 break9_g32409 = staticSwitch13_g32409;
				half Variation_Complex102_g32406 = frac( ( inputMesh.ase_color.r + ( break9_g32409.x + break9_g32409.z ) ) );
				float ObjectData20_g32408 = Variation_Complex102_g32406;
				half Variation_Simple105_g32406 = inputMesh.ase_color.r;
				float WorldData19_g32408 = Variation_Simple105_g32406;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32408 = WorldData19_g32408;
				#else
				float staticSwitch14_g32408 = ObjectData20_g32408;
				#endif
				half Variation3073_g31431 = staticSwitch14_g32408;
				half Motion_Variation284_g32427 = ( _MotionVariation_10 * Variation3073_g31431 );
				float2 appendResult344_g32427 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 Motion_Scale287_g32427 = ( _MotionScale_10 * appendResult344_g32427 );
				half2 Sine_MinusOneToOne281_g32427 = sin( ( mulTime373_g32427 + Motion_Variation284_g32427 + Motion_Scale287_g32427 ) );
				float2 temp_cast_11 = (1.0).xx;
				half Input_Turbulence327_g32427 = Global_NoiseTex_R34_g31431;
				float2 lerpResult321_g32427 = lerp( Sine_MinusOneToOne281_g32427 , temp_cast_11 , Input_Turbulence327_g32427);
				half2 Motion_Bending2258_g31431 = ( ( _MotionAmplitude_10 * Motion_Max_Bending1133_g31431 ) * Wind_Power_103106_g31431 * Wind_DirectionOS39_g31431 * Motion_Use1056_g31431 * Global_NoiseTex_R34_g31431 * lerpResult321_g32427 );
				half Motion_UseInteraction2097_g31431 = _Motion_Interaction;
				half Motion_InteractionMask66_g31431 = break322_g32350.w;
				float lerpResult3307_g31431 = lerp( 1.0 , Variation3073_g31431 , _InteractionVariation);
				half2 Motion_Interaction53_g31431 = ( _InteractionAmplitude * Motion_Max_Bending1133_g31431 * Motion_UseInteraction2097_g31431 * Motion_InteractionMask66_g31431 * Motion_InteractionMask66_g31431 * Wind_DirectionOS39_g31431 * lerpResult3307_g31431 );
				float2 lerpResult109_g31431 = lerp( Motion_Bending2258_g31431 , Motion_Interaction53_g31431 , Motion_InteractionMask66_g31431);
				half Mesh_Motion_182_g31431 = inputMesh.ase_texcoord3.x;
				float2 break143_g31431 = ( lerpResult109_g31431 * Mesh_Motion_182_g31431 );
				half Motion_Z190_g31431 = break143_g31431.y;
				half Angle44_g32429 = Motion_Z190_g31431;
				half3 VertexPos40_g32421 = ( VertexPosRotationAxis50_g32429 + ( VertexPosOtherAxis82_g32429 * cos( Angle44_g32429 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g32429 ) * sin( Angle44_g32429 ) ) );
				float3 appendResult74_g32421 = (float3(0.0 , 0.0 , VertexPos40_g32421.z));
				half3 VertexPosRotationAxis50_g32421 = appendResult74_g32421;
				float3 break84_g32421 = VertexPos40_g32421;
				float3 appendResult81_g32421 = (float3(break84_g32421.x , break84_g32421.y , 0.0));
				half3 VertexPosOtherAxis82_g32421 = appendResult81_g32421;
				half Motion_X216_g31431 = break143_g31431.x;
				half Angle44_g32421 = -Motion_X216_g31431;
				half Motion_Scale321_g32419 = ( _MotionScale_32 * 10.0 );
				half Input_Speed62_g32419 = _MotionSpeed_32;
				float mulTime349_g32419 = _TimeParameters.x * Input_Speed62_g32419;
				float Motion_Variation330_g32419 = ( _MotionVariation_32 * inputMesh.ase_color.r );
				float Bounds_Radius121_g31431 = _MaxBoundsInfo.x;
				half Input_Amplitude58_g32419 = ( _MotionAmplitude_32 * Bounds_Radius121_g31431 * 0.1 );
				float3 appendResult345_g32419 = (float3(inputMesh.ase_color.r , ( 1.0 - inputMesh.ase_color.r ) , inputMesh.ase_color.r));
				half Global_NoiseTex_B132_g31431 = break142_g32370.b;
				half Mesh_Motion_3144_g31431 = inputMesh.ase_texcoord3.z;
				half Motion_Use322013_g31431 = _Motion_32;
				float lerpResult376_g32350 = lerp( 0.1 , 1.0 , Wind_Power369_g32350);
				half Wind_Power_323115_g31431 = lerpResult376_g32350;
				half3 Motion_Flutter263_g31431 = ( ( sin( ( ( ( ase_worldPos.x + ase_worldPos.y + ase_worldPos.z ) * Motion_Scale321_g32419 ) + mulTime349_g32419 + Motion_Variation330_g32419 ) ) * Input_Amplitude58_g32419 * appendResult345_g32419 ) * ( ( Global_NoiseTex_R34_g31431 + Global_NoiseTex_B132_g31431 ) * Mesh_Motion_3144_g31431 * Motion_Use322013_g31431 * Wind_Power_323115_g31431 ) );
				half Wind_Mode3167_g31431 = TVE_WindMode;
				float3 lerpResult3168_g31431 = lerp( inputMesh.positionOS , ( ( VertexPosRotationAxis50_g32421 + ( VertexPosOtherAxis82_g32421 * cos( Angle44_g32421 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g32421 ) * sin( Angle44_g32421 ) ) ) + Motion_Flutter263_g31431 ) , Wind_Mode3167_g31431);
				float3 Vertex_Motion_Object833_g31431 = lerpResult3168_g31431;
				float3 appendResult2043_g31431 = (float3(Motion_X216_g31431 , 0.0 , Motion_Z190_g31431));
				float3 lerpResult3173_g31431 = lerp( inputMesh.positionOS , ( ( inputMesh.positionOS + appendResult2043_g31431 ) + Motion_Flutter263_g31431 ) , Wind_Mode3167_g31431);
				float3 Vertex_Motion_World1118_g31431 = lerpResult3173_g31431;
				float3 temp_output_3331_0_g31431 = ( ( _VertexCat * _VertexMotionSpace * _VertexMotionMode * _VertexDataMode ) + Vertex_Motion_World1118_g31431 );
				#if defined(TVE_VERTEX_DATA_OBJECT)
				float3 staticSwitch3312_g31431 = Vertex_Motion_Object833_g31431;
				#elif defined(TVE_VERTEX_DATA_WORLD)
				float3 staticSwitch3312_g31431 = temp_output_3331_0_g31431;
				#elif defined(TVE_VERTEX_DATA_BATCHED)
				float3 staticSwitch3312_g31431 = temp_output_3331_0_g31431;
				#else
				float3 staticSwitch3312_g31431 = Vertex_Motion_Object833_g31431;
				#endif
				half3 ObjectData20_g32349 = staticSwitch3312_g31431;
				half3 WorldData19_g32349 = Vertex_Motion_World1118_g31431;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32349 = WorldData19_g32349;
				#else
				float3 staticSwitch14_g32349 = ObjectData20_g32349;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g32365 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32368 = localObjectPosition_UNITY_MATRIX_M14_g32365;
				float4 transform68_g32365 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32365.xyz = GetAbsolutePositionWS((transform68_g32365).xyz);
				float3 appendResult93_g32365 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float4 transform62_g32365 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult93_g32365 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32365.xyz = GetAbsolutePositionWS((transform62_g32365).xyz);
				float3 ObjectPositionWithPivots28_g32365 = ( (transform68_g32365).xyz - (transform62_g32365).xyz );
				half3 On20_g32368 = ObjectPositionWithPivots28_g32365;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32368 = On20_g32368;
				#else
				float3 staticSwitch14_g32368 = Off19_g32368;
				#endif
				half3 ObjectData20_g32369 = staticSwitch14_g32368;
				half3 WorldData19_g32369 = Off19_g32368;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32369 = WorldData19_g32369;
				#else
				float3 staticSwitch14_g32369 = ObjectData20_g32369;
				#endif
				float3 temp_output_66_0_g32365 = staticSwitch14_g32369;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32365 = ( temp_output_66_0_g32365 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32365 = temp_output_66_0_g32365;
				#endif
				float temp_output_7_0_g32416 = TVE_SizeFadeEnd;
				float ObjectData20_g32364 = saturate( ( ( ( distance( _WorldSpaceCameraPos , staticSwitch13_g32365 ) * _GlobalSizeFade ) - temp_output_7_0_g32416 ) / ( TVE_SizeFadeStart - temp_output_7_0_g32416 ) ) );
				float WorldData19_g32364 = 1.0;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32364 = WorldData19_g32364;
				#else
				float staticSwitch14_g32364 = ObjectData20_g32364;
				#endif
				float Vertex_SizeFade1740_g31431 = staticSwitch14_g32364;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32355 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32358 = localObjectPosition_UNITY_MATRIX_M14_g32355;
				float4 transform68_g32355 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32355.xyz = GetAbsolutePositionWS((transform68_g32355).xyz);
				float3 appendResult95_g32355 = (float3(inputMesh.ase_texcoord.z , 0.0 , inputMesh.ase_texcoord.w));
				float4 transform62_g32355 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32355 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32355.xyz = GetAbsolutePositionWS((transform62_g32355).xyz);
				float3 ObjectPositionWithPivots28_g32355 = ( (transform68_g32355).xyz - (transform62_g32355).xyz );
				half3 On20_g32358 = ObjectPositionWithPivots28_g32355;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32358 = On20_g32358;
				#else
				float3 staticSwitch14_g32358 = Off19_g32358;
				#endif
				half3 ObjectData20_g32359 = staticSwitch14_g32358;
				half3 WorldData19_g32359 = Off19_g32358;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32359 = WorldData19_g32359;
				#else
				float3 staticSwitch14_g32359 = ObjectData20_g32359;
				#endif
				float3 temp_output_66_0_g32355 = staticSwitch14_g32359;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32355 = ( temp_output_66_0_g32355 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32355 = temp_output_66_0_g32355;
				#endif
				half3 ObjectData20_g32354 = staticSwitch13_g32355;
				half3 WorldData19_g32354 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32354 = WorldData19_g32354;
				#else
				float3 staticSwitch14_g32354 = ObjectData20_g32354;
				#endif
				float2 temp_output_43_38_g32352 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32354).xz ) );
				half4 Legacy33_g32353 = tex2Dlod( TVE_ExtrasTex, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Vegetation33_g32353 = tex2Dlod( TVE_ExtrasTex_Vegetation, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Grass33_g32353 = tex2Dlod( TVE_ExtrasTex_Grass, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Objects33_g32353 = tex2Dlod( TVE_ExtrasTex_Objects, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Custom33_g32353 = tex2Dlod( TVE_ExtrasTex_User, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 localUSE_BUFFERS33_g32353 = USE_BUFFERS( Legacy33_g32353 , Vegetation33_g32353 , Grass33_g32353 , Objects33_g32353 , Custom33_g32353 );
				float4 break49_g32352 = localUSE_BUFFERS33_g32353;
				half Global_ExtrasTex_G305_g31431 = break49_g32352.y;
				float lerpResult346_g31431 = lerp( 1.0 , Global_ExtrasTex_G305_g31431 , _GlobalSize);
				float ObjectData20_g32363 = ( lerpResult346_g31431 * _LocalSize );
				float WorldData19_g32363 = 1.0;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32363 = WorldData19_g32363;
				#else
				float staticSwitch14_g32363 = ObjectData20_g32363;
				#endif
				half Vertex_Size1741_g31431 = staticSwitch14_g32363;
				float3 normalizeResult2696_g31431 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 break2709_g31431 = cross( normalizeResult2696_g31431 , half3(0,1,0) );
				float3 appendResult2710_g31431 = (float3(-break2709_g31431.z , 0.0 , break2709_g31431.x));
				float3 appendResult2667_g31431 = (float3(inputMesh.ase_color.r , 0.5 , inputMesh.ase_color.r));
				float3 normalizeResult2210_g31431 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float dotResult2212_g31431 = dot( normalizeResult2210_g31431 , float3(0,1,0) );
				half Mask_HView2656_g31431 = abs( dotResult2212_g31431 );
				float saferPower2652_g31431 = max( Mask_HView2656_g31431 , 0.0001 );
				half3 Grass_Coverage2661_g31431 = ( ( ( mul( GetWorldToObjectMatrix(), float4( appendResult2710_g31431 , 0.0 ) ).xyz * ( _PerspectivePushValue + _PerspectiveCat ) ) + ( (appendResult2667_g31431*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * inputMesh.ase_color.a * pow( saferPower2652_g31431 , _PerspectiveAngleValue ) );
				float3 Final_VertexPosition890_g31431 = ( ( staticSwitch14_g32349 * Vertex_SizeFade1740_g31431 * Vertex_Size1741_g31431 ) + Mesh_PivotsOS2291_g31431 + Grass_Coverage2661_g31431 );
				
				outputPackedVaryingsMeshToPS.ase_texcoord1 = inputMesh.ase_texcoord;
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;
				outputPackedVaryingsMeshToPS.ase_texcoord2 = float4(inputMesh.positionOS,1);

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Final_VertexPosition890_g31431;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target0
							#ifdef WRITE_MSAA_DEPTH
							, out float1 depthColor : SV_Target1
							#endif
						#elif defined(WRITE_MSAA_DEPTH)
						, out float4 outNormalBuffer : SV_Target0
						, out float1 depthColor : SV_Target1
						#elif defined(SCENESELECTIONPASS)
						, out float4 outColor : SV_Target0
						#endif
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS = packedInput.interp00.xyz;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SceneSurfaceDescription surfaceDescription = (SceneSurfaceDescription)0;
				half2 Main_UVs15_g31431 = ( ( packedInput.ase_texcoord1.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g31431 = tex2D( _MainAlbedoTex, Main_UVs15_g31431 );
				float4 temp_output_51_0_g31431 = ( _MainColor * tex2DNode29_g31431 );
				half Main_Alpha316_g31431 = (temp_output_51_0_g31431).a;
				
				float localCustomAlphaClip9_g32414 = ( 0.0 );
				half Main_AlphaRaw1203_g31431 = tex2DNode29_g31431.a;
				float Mesh_Variation16_g31431 = packedInput.ase_color.r;
				float lerpResult2262_g31431 = lerp( 0.9 , Mesh_Variation16_g31431 , _LeavesVariationValue);
				float3 localObjectPosition_UNITY_MATRIX_M14_g32355 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32358 = localObjectPosition_UNITY_MATRIX_M14_g32355;
				float4 transform68_g32355 = mul(GetObjectToWorldMatrix(),packedInput.ase_texcoord2);
				transform68_g32355.xyz = GetAbsolutePositionWS((transform68_g32355).xyz);
				float3 appendResult95_g32355 = (float3(packedInput.ase_texcoord1.z , 0.0 , packedInput.ase_texcoord1.w));
				float4 transform62_g32355 = mul(GetObjectToWorldMatrix(),float4( ( packedInput.ase_texcoord2.xyz - ( appendResult95_g32355 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32355.xyz = GetAbsolutePositionWS((transform62_g32355).xyz);
				float3 ObjectPositionWithPivots28_g32355 = ( (transform68_g32355).xyz - (transform62_g32355).xyz );
				half3 On20_g32358 = ObjectPositionWithPivots28_g32355;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32358 = On20_g32358;
				#else
				float3 staticSwitch14_g32358 = Off19_g32358;
				#endif
				half3 ObjectData20_g32359 = staticSwitch14_g32358;
				half3 WorldData19_g32359 = Off19_g32358;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32359 = WorldData19_g32359;
				#else
				float3 staticSwitch14_g32359 = ObjectData20_g32359;
				#endif
				float3 temp_output_66_0_g32355 = staticSwitch14_g32359;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32355 = ( temp_output_66_0_g32355 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32355 = temp_output_66_0_g32355;
				#endif
				half3 ObjectData20_g32354 = staticSwitch13_g32355;
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				half3 WorldData19_g32354 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32354 = WorldData19_g32354;
				#else
				float3 staticSwitch14_g32354 = ObjectData20_g32354;
				#endif
				float2 temp_output_43_38_g32352 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32354).xz ) );
				half4 Legacy33_g32353 = tex2D( TVE_ExtrasTex, temp_output_43_38_g32352 );
				half4 Vegetation33_g32353 = tex2D( TVE_ExtrasTex_Vegetation, temp_output_43_38_g32352 );
				half4 Grass33_g32353 = tex2D( TVE_ExtrasTex_Grass, temp_output_43_38_g32352 );
				half4 Objects33_g32353 = tex2D( TVE_ExtrasTex_Objects, temp_output_43_38_g32352 );
				half4 Custom33_g32353 = tex2D( TVE_ExtrasTex_User, temp_output_43_38_g32352 );
				half4 localUSE_BUFFERS33_g32353 = USE_BUFFERS( Legacy33_g32353 , Vegetation33_g32353 , Grass33_g32353 , Objects33_g32353 , Custom33_g32353 );
				float4 break49_g32352 = localUSE_BUFFERS33_g32353;
				half Global_ExtrasTex_R174_g31431 = break49_g32352.x;
				float lerpResult2624_g31431 = lerp( 1.0 , Global_ExtrasTex_R174_g31431 , _GlobalLeaves);
				half AlphaTreshold2132_g31431 = _Cutoff;
				half Mask_Leaves315_g31431 = ( ( (lerpResult2262_g31431*0.5 + 0.5) - ( 1.0 - ( lerpResult2624_g31431 * _LocalLeaves ) ) ) + AlphaTreshold2132_g31431 );
				half Alpha5_g32414 = ( Main_AlphaRaw1203_g31431 * Mask_Leaves315_g31431 );
				float Alpha9_g32414 = Alpha5_g32414;
				#if _ALPHATEST_ON
				clip(Alpha9_g32414 - _Cutoff);
				#endif
				half Final_Clip914_g31431 = localCustomAlphaClip9_g32414;
				
				surfaceDescription.Alpha = Main_Alpha316_g31431;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = Final_Clip914_g31431;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			Cull [_CullMode]

			ZWrite On

			Stencil
			{
				Ref [_StencilRefDepth]
				WriteMask [_StencilWriteMaskDepth]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			HLSLPROGRAM

			#define ASE_NEED_CULLFACE 1
			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#pragma multi_compile _ DOTS_INSTANCING_ON
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 70201
			#if !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif //ASE_NEED_CULLFACE


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
			#pragma multi_compile _ WRITE_NORMAL_BUFFER
			#pragma multi_compile _ WRITE_MSAA_DEPTH

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_VFACE
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local TVE_VERTEX_DATA_OBJECT TVE_VERTEX_DATA_WORLD TVE_VERTEX_DATA_BATCHED
			  
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			    
			#define TVE_IS_GRASS_SHADER
			#define TVE_PIVOT_DATA_BAKED


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord4 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			CBUFFER_START( UnityPerMaterial )
			half4 _NoiseTintOne;
			half4 _GradientColorOne;
			half4 _NoiseTintTwo;
			half4 _GradientColorTwo;
			float4 _MaxBoundsInfo;
			float4 _Color;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _MotionHighlightColor;
			float4 _LocalColors;
			half4 _SubsurfaceColor;
			float4 _SubsurfaceDiffusion_asset;
			half4 _VertexOcclusionColor;
			half3 _render_normals_options;
			float _MotionVariation_32;
			half _BatchingMessage;
			half _IsLitShader;
			half _IsStandardShader;
			half _PerspectiveAngleValue;
			half _PerspectiveNoiseValue;
			half _PerspectiveCat;
			half _Banner;
			half _IsGrassShader;
			half _Motion_10;
			half _Motion_Interaction;
			half _PerspectivePushValue;
			half _LocalSize;
			half _vertex_pivot_mode;
			half _GlobalSize;
			half _GradientMinValue;
			half _VertexDataMode;
			half _VertexMotionMode;
			half _VertexMotionSpace;
			half _VertexCat;
			half _Motion_32;
			half _VertexPivotMode;
			half _GlobalSizeFade;
			half _IsAnyPathShader;
			half _GradientCat;
			half _LeavesVariationValue;
			half _MainOcclusionValue;
			half _GlobalWetness;
			half _MainSmoothnessValue;
			half _OcclusionCat;
			half _VertexOcclusionValue;
			half _render_premul;
			half _OverlayVariationValue;
			half _GlobalOverlay;
			half _OverlayContrastValue;
			half _SubsurfaceViewValue;
			half _GradientMaxValue;
			half _SubsurfaceAngleValue;
			half _SubsurfaceCat;
			half _GlobalHealthiness;
			half _SubsurfaceValue;
			half _SubsurfaceLightValue;
			half _ColorsMaskValue;
			half _GlobalColors;
			half _NoiseMaxValue;
			half _NoiseMinValue;
			half _MoiseCat;
			half _NoiseScaleValue;
			half _DetailMapsMode;
			half _SubsurfaceMaskValue;
			half _DetailTypeMode;
			half _DetailCat;
			half _ObjectDataMessage;
			half _IsTVEShader;
			float _MotionScale_32;
			half _InteractionVariation;
			half _MotionAmplitude_30;
			float _material_batching;
			half _MaskMode;
			float _ObjectMetallicValue;
			float _render_normals;
			float _GrassPerspectiveNoiseValue;
			float _ObjectSmoothnessValue;
			float _render_blend;
			float _render_mode;
			float _render_priority;
			float _OverlayVariation;
			float _OverlayContrast;
			float _GrassPerspectivePushValue;
			float _ObjectOcclusionValue;
			float _SubsurfaceMinValue;
			float _GrassPerspectiveAngleValue;
			float _SubsurfaceMaxValue;
			half _GlobalSpace;
			half _DetailSpace;
			half _render_dst;
			half _render_src;
			half _render_zw;
			half _render_cutoff;
			half _render_cull;
			half _Cutoff;
			half _MotionVariation_20;
			half _VertexVariationMode;
			half _RenderingCat;
			half _GlobalLeaves;
			half _AdvancedCat;
			float _MotionScale_20;
			half _MainCat;
			float _MotionVariation_30;
			half _RenderMode;
			half _MotionAmplitude_20;
			half _MotionVariation_10;
			half _WorldDataMessage;
			float _MotionSpeed_10;
			half _DetailMode;
			half _RenderPriority;
			half _RenderBlend;
			half _GlobalCat;
			half _RenderZWrite;
			half _RenderCull;
			float _MotionSpeed_30;
			half _PivotsMessage;
			half _MotionAmplitude_10;
			float _MotionScale_10;
			float _MotionSpeed_20;
			half _RenderClip;
			half _InteractionAmplitude;
			float _MotionSpeed_32;
			float _MotionScale_30;
			half _RenderNormals;
			half _MainNormalValue;
			half _IsVersion;
			half _MotionAmplitude_32;
			half _LocalLeaves;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _MainTex;
			sampler2D TVE_MotionTex;
			half4 TVE_VolumeCoord;
			sampler2D TVE_MotionTex_Vegetation;
			sampler2D TVE_MotionTex_Grass;
			sampler2D TVE_MotionTex_Objects;
			sampler2D TVE_MotionTex_User;
			half TVE_WindPower;
			sampler2D TVE_NoiseTex;
			float2 TVE_NoiseSpeed_Vegetation;
			float2 TVE_NoiseSpeed_Grass;
			half TVE_NoiseSize_Vegetation;
			half TVE_NoiseSize_Grass;
			half TVE_NoiseContrast;
			half TVE_WindMode;
			half TVE_SizeFadeEnd;
			half TVE_SizeFadeStart;
			sampler2D TVE_ExtrasTex;
			sampler2D TVE_ExtrasTex_Vegetation;
			sampler2D TVE_ExtrasTex_Grass;
			sampler2D TVE_ExtrasTex_Objects;
			sampler2D TVE_ExtrasTex_User;
			sampler2D _MainNormalTex;
			SAMPLER(sampler_MainNormalTex);
			sampler2D _MainMaskTex;
			SAMPLER(sampler_MainMaskTex);
			half TVE_OverlaySmoothness;
			half TVE_OverlayIntensity;
			float TVE_Wetness;
			sampler2D _MainAlbedoTex;
			SAMPLER(sampler_MainAlbedoTex);


			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			
			half4 USE_BUFFERS( half4 Legacy, half4 Vegetation, half4 Grass, half4 Objects, half4 Custom )
			{
				#if defined (TVE_IS_VEGETATION_SHADER)
				return Vegetation;
				#elif defined (TVE_IS_GRASS_SHADER)
				return Grass;
				#elif defined (TVE_IS_OBJECT_SHADER)
				return Objects;
				#elif defined (TVE_IS_CUSTOM_SHADER)
				return Custom;
				#else
				return Legacy;
				#endif
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout SmoothSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData( posInput, surfaceDescription.Alpha );
					ApplyDecalToSurfaceData( decalSurfaceData, surfaceData );
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(SmoothSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				//#ifdef _ALPHATEST_ON
				//DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				//#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				half3 _Vector1 = half3(0,0,0);
				half3 Off19_g32361 = _Vector1;
				float3 appendResult2827_g31431 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				half3 Mesh_PivotsData2831_g31431 = ( appendResult2827_g31431 * _VertexPivotMode );
				half3 On20_g32361 = Mesh_PivotsData2831_g31431;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32361 = On20_g32361;
				#else
				float3 staticSwitch14_g32361 = Off19_g32361;
				#endif
				half3 ObjectData20_g32362 = staticSwitch14_g32361;
				half3 WorldData19_g32362 = Off19_g32361;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32362 = WorldData19_g32362;
				#else
				float3 staticSwitch14_g32362 = ObjectData20_g32362;
				#endif
				#ifdef TVE_VERTEX_DATA_WORLD
				float3 staticSwitch14_g32384 = _Vector1;
				#else
				float3 staticSwitch14_g32384 = staticSwitch14_g32362;
				#endif
				half3 Mesh_PivotsOS2291_g31431 = staticSwitch14_g32384;
				float3 temp_output_2283_0_g31431 = ( inputMesh.positionOS - Mesh_PivotsOS2291_g31431 );
				half3 VertexPos40_g32429 = temp_output_2283_0_g31431;
				float3 appendResult74_g32429 = (float3(VertexPos40_g32429.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g32429 = appendResult74_g32429;
				float3 break84_g32429 = VertexPos40_g32429;
				float3 appendResult81_g32429 = (float3(0.0 , break84_g32429.y , break84_g32429.z));
				half3 VertexPosOtherAxis82_g32429 = appendResult81_g32429;
				float ObjectData20_g32403 = 3.14;
				float Bounds_Height374_g31431 = _MaxBoundsInfo.y;
				float WorldData19_g32403 = ( Bounds_Height374_g31431 * 3.14 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32403 = WorldData19_g32403;
				#else
				float staticSwitch14_g32403 = ObjectData20_g32403;
				#endif
				float Motion_Max_Bending1133_g31431 = staticSwitch14_g32403;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32396 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32399 = localObjectPosition_UNITY_MATRIX_M14_g32396;
				float4 transform68_g32396 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32396.xyz = GetAbsolutePositionWS((transform68_g32396).xyz);
				float3 appendResult93_g32396 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float4 transform62_g32396 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult93_g32396 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32396.xyz = GetAbsolutePositionWS((transform62_g32396).xyz);
				float3 ObjectPositionWithPivots28_g32396 = ( (transform68_g32396).xyz - (transform62_g32396).xyz );
				half3 On20_g32399 = ObjectPositionWithPivots28_g32396;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32399 = On20_g32399;
				#else
				float3 staticSwitch14_g32399 = Off19_g32399;
				#endif
				half3 ObjectData20_g32400 = staticSwitch14_g32399;
				half3 WorldData19_g32400 = Off19_g32399;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32400 = WorldData19_g32400;
				#else
				float3 staticSwitch14_g32400 = ObjectData20_g32400;
				#endif
				float3 temp_output_66_0_g32396 = staticSwitch14_g32400;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32396 = ( temp_output_66_0_g32396 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32396 = temp_output_66_0_g32396;
				#endif
				half3 ObjectData20_g32401 = staticSwitch13_g32396;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				half3 WorldData19_g32401 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32401 = WorldData19_g32401;
				#else
				float3 staticSwitch14_g32401 = ObjectData20_g32401;
				#endif
				float2 temp_output_39_38_g32394 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32401).xz ) );
				half4 Legacy33_g32402 = tex2Dlod( TVE_MotionTex, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Vegetation33_g32402 = tex2Dlod( TVE_MotionTex_Vegetation, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Grass33_g32402 = tex2Dlod( TVE_MotionTex_Grass, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Objects33_g32402 = tex2Dlod( TVE_MotionTex_Objects, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Custom33_g32402 = tex2Dlod( TVE_MotionTex_User, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 localUSE_BUFFERS33_g32402 = USE_BUFFERS( Legacy33_g32402 , Vegetation33_g32402 , Grass33_g32402 , Objects33_g32402 , Custom33_g32402 );
				float4 break322_g32350 = localUSE_BUFFERS33_g32402;
				half Wind_Power369_g32350 = saturate( ( (break322_g32350.z*2.0 + -1.0) + TVE_WindPower ) );
				half Wind_Power_103106_g31431 = Wind_Power369_g32350;
				float3 appendResult323_g32350 = (float3(break322_g32350.x , 0.0 , break322_g32350.y));
				float3 temp_output_324_0_g32350 = (appendResult323_g32350*2.0 + -1.0);
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				float3 temp_output_339_0_g32350 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_324_0_g32350 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Wind_DirectionOS39_g31431 = (temp_output_339_0_g32350).xz;
				half Motion_Use1056_g31431 = _Motion_10;
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch160_g32370 = TVE_NoiseSpeed_Grass;
				#else
				float2 staticSwitch160_g32370 = TVE_NoiseSpeed_Vegetation;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g32372 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32375 = localObjectPosition_UNITY_MATRIX_M14_g32372;
				float4 transform68_g32372 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32372.xyz = GetAbsolutePositionWS((transform68_g32372).xyz);
				float3 appendResult95_g32372 = (float3(inputMesh.ase_texcoord.z , 0.0 , inputMesh.ase_texcoord.w));
				float4 transform62_g32372 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32372 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32372.xyz = GetAbsolutePositionWS((transform62_g32372).xyz);
				float3 ObjectPositionWithPivots28_g32372 = ( (transform68_g32372).xyz - (transform62_g32372).xyz );
				half3 On20_g32375 = ObjectPositionWithPivots28_g32372;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32375 = On20_g32375;
				#else
				float3 staticSwitch14_g32375 = Off19_g32375;
				#endif
				half3 ObjectData20_g32376 = staticSwitch14_g32375;
				half3 WorldData19_g32376 = Off19_g32375;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32376 = WorldData19_g32376;
				#else
				float3 staticSwitch14_g32376 = ObjectData20_g32376;
				#endif
				float3 temp_output_66_0_g32372 = staticSwitch14_g32376;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32372 = ( temp_output_66_0_g32372 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32372 = temp_output_66_0_g32372;
				#endif
				half3 ObjectData20_g32371 = staticSwitch13_g32372;
				half3 WorldData19_g32371 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32371 = WorldData19_g32371;
				#else
				float3 staticSwitch14_g32371 = ObjectData20_g32371;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch164_g32370 = (ase_worldPos).xz;
				#else
				float2 staticSwitch164_g32370 = (staticSwitch14_g32371).xz;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float staticSwitch161_g32370 = TVE_NoiseSize_Grass;
				#else
				float staticSwitch161_g32370 = TVE_NoiseSize_Vegetation;
				#endif
				float2 panner73_g32370 = ( _TimeParameters.x * staticSwitch160_g32370 + ( staticSwitch164_g32370 * staticSwitch161_g32370 ));
				float4 tex2DNode75_g32370 = tex2Dlod( TVE_NoiseTex, float4( panner73_g32370, 0, 0.0) );
				float4 saferPower77_g32370 = max( abs( tex2DNode75_g32370 ) , 0.0001 );
				float4 temp_cast_9 = (TVE_NoiseContrast).xxxx;
				float4 break142_g32370 = pow( saferPower77_g32370 , temp_cast_9 );
				half Global_NoiseTex_R34_g31431 = break142_g32370.r;
				half Input_Speed62_g32427 = _MotionSpeed_10;
				float mulTime373_g32427 = _TimeParameters.x * Input_Speed62_g32427;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32409 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32412 = localObjectPosition_UNITY_MATRIX_M14_g32409;
				float4 transform68_g32409 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32409.xyz = GetAbsolutePositionWS((transform68_g32409).xyz);
				float3 appendResult95_g32409 = (float3(inputMesh.ase_texcoord.z , 0.0 , inputMesh.ase_texcoord.w));
				float4 transform62_g32409 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32409 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32409.xyz = GetAbsolutePositionWS((transform62_g32409).xyz);
				float3 ObjectPositionWithPivots28_g32409 = ( (transform68_g32409).xyz - (transform62_g32409).xyz );
				half3 On20_g32412 = ObjectPositionWithPivots28_g32409;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32412 = On20_g32412;
				#else
				float3 staticSwitch14_g32412 = Off19_g32412;
				#endif
				half3 ObjectData20_g32413 = staticSwitch14_g32412;
				half3 WorldData19_g32413 = Off19_g32412;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32413 = WorldData19_g32413;
				#else
				float3 staticSwitch14_g32413 = ObjectData20_g32413;
				#endif
				float3 temp_output_66_0_g32409 = staticSwitch14_g32413;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32409 = ( temp_output_66_0_g32409 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32409 = temp_output_66_0_g32409;
				#endif
				float3 break9_g32409 = staticSwitch13_g32409;
				half Variation_Complex102_g32406 = frac( ( inputMesh.ase_color.r + ( break9_g32409.x + break9_g32409.z ) ) );
				float ObjectData20_g32408 = Variation_Complex102_g32406;
				half Variation_Simple105_g32406 = inputMesh.ase_color.r;
				float WorldData19_g32408 = Variation_Simple105_g32406;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32408 = WorldData19_g32408;
				#else
				float staticSwitch14_g32408 = ObjectData20_g32408;
				#endif
				half Variation3073_g31431 = staticSwitch14_g32408;
				half Motion_Variation284_g32427 = ( _MotionVariation_10 * Variation3073_g31431 );
				float2 appendResult344_g32427 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 Motion_Scale287_g32427 = ( _MotionScale_10 * appendResult344_g32427 );
				half2 Sine_MinusOneToOne281_g32427 = sin( ( mulTime373_g32427 + Motion_Variation284_g32427 + Motion_Scale287_g32427 ) );
				float2 temp_cast_11 = (1.0).xx;
				half Input_Turbulence327_g32427 = Global_NoiseTex_R34_g31431;
				float2 lerpResult321_g32427 = lerp( Sine_MinusOneToOne281_g32427 , temp_cast_11 , Input_Turbulence327_g32427);
				half2 Motion_Bending2258_g31431 = ( ( _MotionAmplitude_10 * Motion_Max_Bending1133_g31431 ) * Wind_Power_103106_g31431 * Wind_DirectionOS39_g31431 * Motion_Use1056_g31431 * Global_NoiseTex_R34_g31431 * lerpResult321_g32427 );
				half Motion_UseInteraction2097_g31431 = _Motion_Interaction;
				half Motion_InteractionMask66_g31431 = break322_g32350.w;
				float lerpResult3307_g31431 = lerp( 1.0 , Variation3073_g31431 , _InteractionVariation);
				half2 Motion_Interaction53_g31431 = ( _InteractionAmplitude * Motion_Max_Bending1133_g31431 * Motion_UseInteraction2097_g31431 * Motion_InteractionMask66_g31431 * Motion_InteractionMask66_g31431 * Wind_DirectionOS39_g31431 * lerpResult3307_g31431 );
				float2 lerpResult109_g31431 = lerp( Motion_Bending2258_g31431 , Motion_Interaction53_g31431 , Motion_InteractionMask66_g31431);
				half Mesh_Motion_182_g31431 = inputMesh.ase_texcoord3.x;
				float2 break143_g31431 = ( lerpResult109_g31431 * Mesh_Motion_182_g31431 );
				half Motion_Z190_g31431 = break143_g31431.y;
				half Angle44_g32429 = Motion_Z190_g31431;
				half3 VertexPos40_g32421 = ( VertexPosRotationAxis50_g32429 + ( VertexPosOtherAxis82_g32429 * cos( Angle44_g32429 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g32429 ) * sin( Angle44_g32429 ) ) );
				float3 appendResult74_g32421 = (float3(0.0 , 0.0 , VertexPos40_g32421.z));
				half3 VertexPosRotationAxis50_g32421 = appendResult74_g32421;
				float3 break84_g32421 = VertexPos40_g32421;
				float3 appendResult81_g32421 = (float3(break84_g32421.x , break84_g32421.y , 0.0));
				half3 VertexPosOtherAxis82_g32421 = appendResult81_g32421;
				half Motion_X216_g31431 = break143_g31431.x;
				half Angle44_g32421 = -Motion_X216_g31431;
				half Motion_Scale321_g32419 = ( _MotionScale_32 * 10.0 );
				half Input_Speed62_g32419 = _MotionSpeed_32;
				float mulTime349_g32419 = _TimeParameters.x * Input_Speed62_g32419;
				float Motion_Variation330_g32419 = ( _MotionVariation_32 * inputMesh.ase_color.r );
				float Bounds_Radius121_g31431 = _MaxBoundsInfo.x;
				half Input_Amplitude58_g32419 = ( _MotionAmplitude_32 * Bounds_Radius121_g31431 * 0.1 );
				float3 appendResult345_g32419 = (float3(inputMesh.ase_color.r , ( 1.0 - inputMesh.ase_color.r ) , inputMesh.ase_color.r));
				half Global_NoiseTex_B132_g31431 = break142_g32370.b;
				half Mesh_Motion_3144_g31431 = inputMesh.ase_texcoord3.z;
				half Motion_Use322013_g31431 = _Motion_32;
				float lerpResult376_g32350 = lerp( 0.1 , 1.0 , Wind_Power369_g32350);
				half Wind_Power_323115_g31431 = lerpResult376_g32350;
				half3 Motion_Flutter263_g31431 = ( ( sin( ( ( ( ase_worldPos.x + ase_worldPos.y + ase_worldPos.z ) * Motion_Scale321_g32419 ) + mulTime349_g32419 + Motion_Variation330_g32419 ) ) * Input_Amplitude58_g32419 * appendResult345_g32419 ) * ( ( Global_NoiseTex_R34_g31431 + Global_NoiseTex_B132_g31431 ) * Mesh_Motion_3144_g31431 * Motion_Use322013_g31431 * Wind_Power_323115_g31431 ) );
				half Wind_Mode3167_g31431 = TVE_WindMode;
				float3 lerpResult3168_g31431 = lerp( inputMesh.positionOS , ( ( VertexPosRotationAxis50_g32421 + ( VertexPosOtherAxis82_g32421 * cos( Angle44_g32421 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g32421 ) * sin( Angle44_g32421 ) ) ) + Motion_Flutter263_g31431 ) , Wind_Mode3167_g31431);
				float3 Vertex_Motion_Object833_g31431 = lerpResult3168_g31431;
				float3 appendResult2043_g31431 = (float3(Motion_X216_g31431 , 0.0 , Motion_Z190_g31431));
				float3 lerpResult3173_g31431 = lerp( inputMesh.positionOS , ( ( inputMesh.positionOS + appendResult2043_g31431 ) + Motion_Flutter263_g31431 ) , Wind_Mode3167_g31431);
				float3 Vertex_Motion_World1118_g31431 = lerpResult3173_g31431;
				float3 temp_output_3331_0_g31431 = ( ( _VertexCat * _VertexMotionSpace * _VertexMotionMode * _VertexDataMode ) + Vertex_Motion_World1118_g31431 );
				#if defined(TVE_VERTEX_DATA_OBJECT)
				float3 staticSwitch3312_g31431 = Vertex_Motion_Object833_g31431;
				#elif defined(TVE_VERTEX_DATA_WORLD)
				float3 staticSwitch3312_g31431 = temp_output_3331_0_g31431;
				#elif defined(TVE_VERTEX_DATA_BATCHED)
				float3 staticSwitch3312_g31431 = temp_output_3331_0_g31431;
				#else
				float3 staticSwitch3312_g31431 = Vertex_Motion_Object833_g31431;
				#endif
				half3 ObjectData20_g32349 = staticSwitch3312_g31431;
				half3 WorldData19_g32349 = Vertex_Motion_World1118_g31431;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32349 = WorldData19_g32349;
				#else
				float3 staticSwitch14_g32349 = ObjectData20_g32349;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g32365 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32368 = localObjectPosition_UNITY_MATRIX_M14_g32365;
				float4 transform68_g32365 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32365.xyz = GetAbsolutePositionWS((transform68_g32365).xyz);
				float3 appendResult93_g32365 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float4 transform62_g32365 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult93_g32365 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32365.xyz = GetAbsolutePositionWS((transform62_g32365).xyz);
				float3 ObjectPositionWithPivots28_g32365 = ( (transform68_g32365).xyz - (transform62_g32365).xyz );
				half3 On20_g32368 = ObjectPositionWithPivots28_g32365;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32368 = On20_g32368;
				#else
				float3 staticSwitch14_g32368 = Off19_g32368;
				#endif
				half3 ObjectData20_g32369 = staticSwitch14_g32368;
				half3 WorldData19_g32369 = Off19_g32368;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32369 = WorldData19_g32369;
				#else
				float3 staticSwitch14_g32369 = ObjectData20_g32369;
				#endif
				float3 temp_output_66_0_g32365 = staticSwitch14_g32369;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32365 = ( temp_output_66_0_g32365 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32365 = temp_output_66_0_g32365;
				#endif
				float temp_output_7_0_g32416 = TVE_SizeFadeEnd;
				float ObjectData20_g32364 = saturate( ( ( ( distance( _WorldSpaceCameraPos , staticSwitch13_g32365 ) * _GlobalSizeFade ) - temp_output_7_0_g32416 ) / ( TVE_SizeFadeStart - temp_output_7_0_g32416 ) ) );
				float WorldData19_g32364 = 1.0;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32364 = WorldData19_g32364;
				#else
				float staticSwitch14_g32364 = ObjectData20_g32364;
				#endif
				float Vertex_SizeFade1740_g31431 = staticSwitch14_g32364;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32355 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32358 = localObjectPosition_UNITY_MATRIX_M14_g32355;
				float4 transform68_g32355 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32355.xyz = GetAbsolutePositionWS((transform68_g32355).xyz);
				float3 appendResult95_g32355 = (float3(inputMesh.ase_texcoord.z , 0.0 , inputMesh.ase_texcoord.w));
				float4 transform62_g32355 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32355 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32355.xyz = GetAbsolutePositionWS((transform62_g32355).xyz);
				float3 ObjectPositionWithPivots28_g32355 = ( (transform68_g32355).xyz - (transform62_g32355).xyz );
				half3 On20_g32358 = ObjectPositionWithPivots28_g32355;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32358 = On20_g32358;
				#else
				float3 staticSwitch14_g32358 = Off19_g32358;
				#endif
				half3 ObjectData20_g32359 = staticSwitch14_g32358;
				half3 WorldData19_g32359 = Off19_g32358;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32359 = WorldData19_g32359;
				#else
				float3 staticSwitch14_g32359 = ObjectData20_g32359;
				#endif
				float3 temp_output_66_0_g32355 = staticSwitch14_g32359;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32355 = ( temp_output_66_0_g32355 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32355 = temp_output_66_0_g32355;
				#endif
				half3 ObjectData20_g32354 = staticSwitch13_g32355;
				half3 WorldData19_g32354 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32354 = WorldData19_g32354;
				#else
				float3 staticSwitch14_g32354 = ObjectData20_g32354;
				#endif
				float2 temp_output_43_38_g32352 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32354).xz ) );
				half4 Legacy33_g32353 = tex2Dlod( TVE_ExtrasTex, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Vegetation33_g32353 = tex2Dlod( TVE_ExtrasTex_Vegetation, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Grass33_g32353 = tex2Dlod( TVE_ExtrasTex_Grass, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Objects33_g32353 = tex2Dlod( TVE_ExtrasTex_Objects, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Custom33_g32353 = tex2Dlod( TVE_ExtrasTex_User, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 localUSE_BUFFERS33_g32353 = USE_BUFFERS( Legacy33_g32353 , Vegetation33_g32353 , Grass33_g32353 , Objects33_g32353 , Custom33_g32353 );
				float4 break49_g32352 = localUSE_BUFFERS33_g32353;
				half Global_ExtrasTex_G305_g31431 = break49_g32352.y;
				float lerpResult346_g31431 = lerp( 1.0 , Global_ExtrasTex_G305_g31431 , _GlobalSize);
				float ObjectData20_g32363 = ( lerpResult346_g31431 * _LocalSize );
				float WorldData19_g32363 = 1.0;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32363 = WorldData19_g32363;
				#else
				float staticSwitch14_g32363 = ObjectData20_g32363;
				#endif
				half Vertex_Size1741_g31431 = staticSwitch14_g32363;
				float3 normalizeResult2696_g31431 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 break2709_g31431 = cross( normalizeResult2696_g31431 , half3(0,1,0) );
				float3 appendResult2710_g31431 = (float3(-break2709_g31431.z , 0.0 , break2709_g31431.x));
				float3 appendResult2667_g31431 = (float3(inputMesh.ase_color.r , 0.5 , inputMesh.ase_color.r));
				float3 normalizeResult2210_g31431 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float dotResult2212_g31431 = dot( normalizeResult2210_g31431 , float3(0,1,0) );
				half Mask_HView2656_g31431 = abs( dotResult2212_g31431 );
				float saferPower2652_g31431 = max( Mask_HView2656_g31431 , 0.0001 );
				half3 Grass_Coverage2661_g31431 = ( ( ( mul( GetWorldToObjectMatrix(), float4( appendResult2710_g31431 , 0.0 ) ).xyz * ( _PerspectivePushValue + _PerspectiveCat ) ) + ( (appendResult2667_g31431*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * inputMesh.ase_color.a * pow( saferPower2652_g31431 , _PerspectiveAngleValue ) );
				float3 Final_VertexPosition890_g31431 = ( ( staticSwitch14_g32349 * Vertex_SizeFade1740_g31431 * Vertex_Size1741_g31431 ) + Mesh_PivotsOS2291_g31431 + Grass_Coverage2661_g31431 );
				
				outputPackedVaryingsMeshToPS.ase_texcoord3 = inputMesh.ase_texcoord;
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;
				outputPackedVaryingsMeshToPS.ase_texcoord4 = float4(inputMesh.positionOS,1);

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Final_VertexPosition890_g31431;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz = normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				return outputPackedVaryingsMeshToPS;
			}
			
			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target0
							#ifdef WRITE_MSAA_DEPTH
							, out float1 depthColor : SV_Target1
							#endif
						#elif defined(WRITE_MSAA_DEPTH)
						, out float4 outNormalBuffer : SV_Target0
						, out float1 depthColor : SV_Target1
						#elif defined(SCENESELECTIONPASS)
						, out float4 outColor : SV_Target0
						#endif
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS = packedInput.interp00.xyz;
				float3 normalWS = packedInput.interp01.xyz;
				float4 tangentWS = packedInput.interp02.xyzw;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SmoothSurfaceDescription surfaceDescription = (SmoothSurfaceDescription)0;
				half2 Main_UVs15_g31431 = ( ( packedInput.ase_texcoord3.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode117_g31431 = tex2D( _MainNormalTex, Main_UVs15_g31431 );
				float2 appendResult88_g32418 = (float2(tex2DNode117_g31431.a , tex2DNode117_g31431.g));
				float2 temp_output_90_0_g32418 = ( (appendResult88_g32418*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult91_g32418 = (float3(temp_output_90_0_g32418 , 1.0));
				half3 Main_Normal137_g31431 = appendResult91_g32418;
				float3 temp_output_13_0_g32320 = Main_Normal137_g31431;
				float3 switchResult12_g32320 = (((isFrontFace>0)?(temp_output_13_0_g32320):(( temp_output_13_0_g32320 * _render_normals_options ))));
				half3 Blend_Normal312_g31431 = switchResult12_g32320;
				half3 Final_Normal366_g31431 = Blend_Normal312_g31431;
				
				float4 tex2DNode35_g31431 = tex2D( _MainMaskTex, Main_UVs15_g31431 );
				half Main_Smoothness227_g31431 = ( tex2DNode35_g31431.a * _MainSmoothnessValue );
				half Blend_Smoothness314_g31431 = Main_Smoothness227_g31431;
				half Global_OverlaySmoothness311_g31431 = TVE_OverlaySmoothness;
				float2 break93_g32418 = temp_output_90_0_g32418;
				half Main_NormalY2095_g31431 = break93_g32418.y;
				half Overlay_Contrast1405_g31431 = _OverlayContrastValue;
				half Global_OverlayIntensity154_g31431 = TVE_OverlayIntensity;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32355 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32358 = localObjectPosition_UNITY_MATRIX_M14_g32355;
				float4 transform68_g32355 = mul(GetObjectToWorldMatrix(),packedInput.ase_texcoord4);
				transform68_g32355.xyz = GetAbsolutePositionWS((transform68_g32355).xyz);
				float3 appendResult95_g32355 = (float3(packedInput.ase_texcoord3.z , 0.0 , packedInput.ase_texcoord3.w));
				float4 transform62_g32355 = mul(GetObjectToWorldMatrix(),float4( ( packedInput.ase_texcoord4.xyz - ( appendResult95_g32355 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32355.xyz = GetAbsolutePositionWS((transform62_g32355).xyz);
				float3 ObjectPositionWithPivots28_g32355 = ( (transform68_g32355).xyz - (transform62_g32355).xyz );
				half3 On20_g32358 = ObjectPositionWithPivots28_g32355;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32358 = On20_g32358;
				#else
				float3 staticSwitch14_g32358 = Off19_g32358;
				#endif
				half3 ObjectData20_g32359 = staticSwitch14_g32358;
				half3 WorldData19_g32359 = Off19_g32358;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32359 = WorldData19_g32359;
				#else
				float3 staticSwitch14_g32359 = ObjectData20_g32359;
				#endif
				float3 temp_output_66_0_g32355 = staticSwitch14_g32359;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32355 = ( temp_output_66_0_g32355 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32355 = temp_output_66_0_g32355;
				#endif
				half3 ObjectData20_g32354 = staticSwitch13_g32355;
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				half3 WorldData19_g32354 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32354 = WorldData19_g32354;
				#else
				float3 staticSwitch14_g32354 = ObjectData20_g32354;
				#endif
				float2 temp_output_43_38_g32352 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32354).xz ) );
				half4 Legacy33_g32353 = tex2D( TVE_ExtrasTex, temp_output_43_38_g32352 );
				half4 Vegetation33_g32353 = tex2D( TVE_ExtrasTex_Vegetation, temp_output_43_38_g32352 );
				half4 Grass33_g32353 = tex2D( TVE_ExtrasTex_Grass, temp_output_43_38_g32352 );
				half4 Objects33_g32353 = tex2D( TVE_ExtrasTex_Objects, temp_output_43_38_g32352 );
				half4 Custom33_g32353 = tex2D( TVE_ExtrasTex_User, temp_output_43_38_g32352 );
				half4 localUSE_BUFFERS33_g32353 = USE_BUFFERS( Legacy33_g32353 , Vegetation33_g32353 , Grass33_g32353 , Objects33_g32353 , Custom33_g32353 );
				float4 break49_g32352 = localUSE_BUFFERS33_g32353;
				half Global_ExtrasTex_B156_g31431 = break49_g32352.z;
				float temp_output_1025_0_g31431 = ( Global_OverlayIntensity154_g31431 * _GlobalOverlay * Global_ExtrasTex_B156_g31431 );
				float lerpResult1065_g31431 = lerp( 1.0 , packedInput.ase_color.r , _OverlayVariationValue);
				half Overlay_Commons1365_g31431 = ( temp_output_1025_0_g31431 * lerpResult1065_g31431 );
				half Overlay_Mask269_g31431 = saturate( ( saturate( ( packedInput.ase_color.a + ( Main_NormalY2095_g31431 * Overlay_Contrast1405_g31431 ) ) ) - ( 1.0 - Overlay_Commons1365_g31431 ) ) );
				float lerpResult343_g31431 = lerp( Blend_Smoothness314_g31431 , Global_OverlaySmoothness311_g31431 , Overlay_Mask269_g31431);
				half Final_Smoothness371_g31431 = lerpResult343_g31431;
				half Global_Wetness1016_g31431 = ( TVE_Wetness * _GlobalWetness );
				half Global_ExtrasTex_A1033_g31431 = break49_g32352.w;
				float lerpResult1037_g31431 = lerp( Final_Smoothness371_g31431 , saturate( ( Final_Smoothness371_g31431 + Global_Wetness1016_g31431 ) ) , Global_ExtrasTex_A1033_g31431);
				
				float4 tex2DNode29_g31431 = tex2D( _MainAlbedoTex, Main_UVs15_g31431 );
				float4 temp_output_51_0_g31431 = ( _MainColor * tex2DNode29_g31431 );
				half Main_Alpha316_g31431 = (temp_output_51_0_g31431).a;
				
				float localCustomAlphaClip9_g32414 = ( 0.0 );
				half Main_AlphaRaw1203_g31431 = tex2DNode29_g31431.a;
				float Mesh_Variation16_g31431 = packedInput.ase_color.r;
				float lerpResult2262_g31431 = lerp( 0.9 , Mesh_Variation16_g31431 , _LeavesVariationValue);
				half Global_ExtrasTex_R174_g31431 = break49_g32352.x;
				float lerpResult2624_g31431 = lerp( 1.0 , Global_ExtrasTex_R174_g31431 , _GlobalLeaves);
				half AlphaTreshold2132_g31431 = _Cutoff;
				half Mask_Leaves315_g31431 = ( ( (lerpResult2262_g31431*0.5 + 0.5) - ( 1.0 - ( lerpResult2624_g31431 * _LocalLeaves ) ) ) + AlphaTreshold2132_g31431 );
				half Alpha5_g32414 = ( Main_AlphaRaw1203_g31431 * Mask_Leaves315_g31431 );
				float Alpha9_g32414 = Alpha5_g32414;
				#if _ALPHATEST_ON
				clip(Alpha9_g32414 - _Cutoff);
				#endif
				half Final_Clip914_g31431 = localCustomAlphaClip9_g32414;
				
				surfaceDescription.Normal = Final_Normal366_g31431;
				surfaceDescription.Smoothness = lerpResult1037_g31431;
				surfaceDescription.Alpha = Main_Alpha316_g31431;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = Final_Clip914_g31431;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="Forward" }

			Blend [_SrcBlend] [_DstBlend], [_AlphaSrcBlend] [_AlphaDstBlend]
			Cull [_CullModeForward]
			ZTest [_ZTestDepthEqualForOpaque]
			ZWrite [_ZWrite]

			Stencil
			{
				Ref [_StencilRef]
				WriteMask [_StencilWriteMask]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			ColorMask [_ColorMaskTransparentVel] 1

			HLSLPROGRAM

			#define ASE_NEED_CULLFACE 1
			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#pragma multi_compile _ DOTS_INSTANCING_ON
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 70201
			#if !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif //ASE_NEED_CULLFACE


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#if !defined(DEBUG_DISPLAY) && defined(_ALPHATEST_ON)
			#define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
			#endif

			#define SHADERPASS SHADERPASS_FORWARD
			#pragma multi_compile _ DEBUG_DISPLAY
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile DECALS_OFF DECALS_3RT DECALS_4RT
			#pragma multi_compile USE_FPTL_LIGHTLIST USE_CLUSTERED_LIGHTLIST
			#pragma multi_compile SHADOW_LOW SHADOW_MEDIUM SHADOW_HIGH

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
			#define HAS_LIGHTLOOP
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_VFACE
			#pragma shader_feature_local TVE_VERTEX_DATA_OBJECT TVE_VERTEX_DATA_WORLD TVE_VERTEX_DATA_BATCHED
			  
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			    
			#define TVE_IS_GRASS_SHADER
			#define TVE_PIVOT_DATA_BAKED


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 previousPositionOS : TEXCOORD4;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						float3 precomputedVelocity : TEXCOORD5;
					#endif
				#endif
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 interp03 : TEXCOORD3;
				float4 interp04 : TEXCOORD4;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 vpassPositionCS : TEXCOORD5;
					float3 vpassPreviousPositionCS : TEXCOORD6;
				#endif
				float4 ase_color : COLOR;
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			CBUFFER_START( UnityPerMaterial )
			half4 _NoiseTintOne;
			half4 _GradientColorOne;
			half4 _NoiseTintTwo;
			half4 _GradientColorTwo;
			float4 _MaxBoundsInfo;
			float4 _Color;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _MotionHighlightColor;
			float4 _LocalColors;
			half4 _SubsurfaceColor;
			float4 _SubsurfaceDiffusion_asset;
			half4 _VertexOcclusionColor;
			half3 _render_normals_options;
			float _MotionVariation_32;
			half _BatchingMessage;
			half _IsLitShader;
			half _IsStandardShader;
			half _PerspectiveAngleValue;
			half _PerspectiveNoiseValue;
			half _PerspectiveCat;
			half _Banner;
			half _IsGrassShader;
			half _Motion_10;
			half _Motion_Interaction;
			half _PerspectivePushValue;
			half _LocalSize;
			half _vertex_pivot_mode;
			half _GlobalSize;
			half _GradientMinValue;
			half _VertexDataMode;
			half _VertexMotionMode;
			half _VertexMotionSpace;
			half _VertexCat;
			half _Motion_32;
			half _VertexPivotMode;
			half _GlobalSizeFade;
			half _IsAnyPathShader;
			half _GradientCat;
			half _LeavesVariationValue;
			half _MainOcclusionValue;
			half _GlobalWetness;
			half _MainSmoothnessValue;
			half _OcclusionCat;
			half _VertexOcclusionValue;
			half _render_premul;
			half _OverlayVariationValue;
			half _GlobalOverlay;
			half _OverlayContrastValue;
			half _SubsurfaceViewValue;
			half _GradientMaxValue;
			half _SubsurfaceAngleValue;
			half _SubsurfaceCat;
			half _GlobalHealthiness;
			half _SubsurfaceValue;
			half _SubsurfaceLightValue;
			half _ColorsMaskValue;
			half _GlobalColors;
			half _NoiseMaxValue;
			half _NoiseMinValue;
			half _MoiseCat;
			half _NoiseScaleValue;
			half _DetailMapsMode;
			half _SubsurfaceMaskValue;
			half _DetailTypeMode;
			half _DetailCat;
			half _ObjectDataMessage;
			half _IsTVEShader;
			float _MotionScale_32;
			half _InteractionVariation;
			half _MotionAmplitude_30;
			float _material_batching;
			half _MaskMode;
			float _ObjectMetallicValue;
			float _render_normals;
			float _GrassPerspectiveNoiseValue;
			float _ObjectSmoothnessValue;
			float _render_blend;
			float _render_mode;
			float _render_priority;
			float _OverlayVariation;
			float _OverlayContrast;
			float _GrassPerspectivePushValue;
			float _ObjectOcclusionValue;
			float _SubsurfaceMinValue;
			float _GrassPerspectiveAngleValue;
			float _SubsurfaceMaxValue;
			half _GlobalSpace;
			half _DetailSpace;
			half _render_dst;
			half _render_src;
			half _render_zw;
			half _render_cutoff;
			half _render_cull;
			half _Cutoff;
			half _MotionVariation_20;
			half _VertexVariationMode;
			half _RenderingCat;
			half _GlobalLeaves;
			half _AdvancedCat;
			float _MotionScale_20;
			half _MainCat;
			float _MotionVariation_30;
			half _RenderMode;
			half _MotionAmplitude_20;
			half _MotionVariation_10;
			half _WorldDataMessage;
			float _MotionSpeed_10;
			half _DetailMode;
			half _RenderPriority;
			half _RenderBlend;
			half _GlobalCat;
			half _RenderZWrite;
			half _RenderCull;
			float _MotionSpeed_30;
			half _PivotsMessage;
			half _MotionAmplitude_10;
			float _MotionScale_10;
			float _MotionSpeed_20;
			half _RenderClip;
			half _InteractionAmplitude;
			float _MotionSpeed_32;
			float _MotionScale_30;
			half _RenderNormals;
			half _MainNormalValue;
			half _IsVersion;
			half _MotionAmplitude_32;
			half _LocalLeaves;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _MainTex;
			sampler2D TVE_MotionTex;
			half4 TVE_VolumeCoord;
			sampler2D TVE_MotionTex_Vegetation;
			sampler2D TVE_MotionTex_Grass;
			sampler2D TVE_MotionTex_Objects;
			sampler2D TVE_MotionTex_User;
			half TVE_WindPower;
			sampler2D TVE_NoiseTex;
			float2 TVE_NoiseSpeed_Vegetation;
			float2 TVE_NoiseSpeed_Grass;
			half TVE_NoiseSize_Vegetation;
			half TVE_NoiseSize_Grass;
			half TVE_NoiseContrast;
			half TVE_WindMode;
			half TVE_SizeFadeEnd;
			half TVE_SizeFadeStart;
			sampler2D TVE_ExtrasTex;
			sampler2D TVE_ExtrasTex_Vegetation;
			sampler2D TVE_ExtrasTex_Grass;
			sampler2D TVE_ExtrasTex_Objects;
			sampler2D TVE_ExtrasTex_User;
			sampler2D _NoiseTex;
			SAMPLER(sampler_NoiseTex);
			sampler2D _MainAlbedoTex;
			SAMPLER(samplerTVE_NoiseTex);
			half TVE_NoiseHighlight;
			sampler2D TVE_ColorsTex;
			sampler2D TVE_ColorsTex_Vegetation;
			sampler2D TVE_ColorsTex_Grass;
			sampler2D TVE_ColorsTex_Objects;
			sampler2D TVE_ColorsTex_User;
			float4 TVE_MainLightParams;
			half3 TVE_MainLightDirection;
			half4 TVE_OverlayColor;
			sampler2D _MainNormalTex;
			SAMPLER(sampler_MainNormalTex);
			half TVE_OverlayIntensity;
			sampler2D _MainMaskTex;
			SAMPLER(sampler_MainMaskTex);
			half TVE_OverlaySmoothness;
			float TVE_Wetness;
			SAMPLER(sampler_MainAlbedoTex);


			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			
			half4 USE_BUFFERS( half4 Legacy, half4 Vegetation, half4 Grass, half4 Objects, half4 Custom )
			{
				#if defined (TVE_IS_VEGETATION_SHADER)
				return Vegetation;
				#elif defined (TVE_IS_GRASS_SHADER)
				return Grass;
				#elif defined (TVE_IS_OBJECT_SHADER)
				return Objects;
				#elif defined (TVE_IS_CUSTOM_SHADER)
				return Custom;
				#else
				return Legacy;
				#endif
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.baseColor =					surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif
				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness =					surfaceDescription.Thickness;
				#endif
				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;
				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData( posInput, surfaceDescription.Alpha );
					ApplyDecalToSurfaceData( decalSurfaceData, surfaceData );
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				//#ifdef _ALPHATEST_ON
				//DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				//#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				#ifdef _ASE_BAKEDGI
				builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif
				#ifdef _ASE_BAKEDBACKGI
				builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

				builtinData.emissiveColor = surfaceDescription.Emission;

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			AttributesMesh ApplyMeshModification(AttributesMesh inputMesh, float3 timeParameters, inout PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS )
			{
				_TimeParameters.xyz = timeParameters;
				half3 _Vector1 = half3(0,0,0);
				half3 Off19_g32361 = _Vector1;
				float3 appendResult2827_g31431 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				half3 Mesh_PivotsData2831_g31431 = ( appendResult2827_g31431 * _VertexPivotMode );
				half3 On20_g32361 = Mesh_PivotsData2831_g31431;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32361 = On20_g32361;
				#else
				float3 staticSwitch14_g32361 = Off19_g32361;
				#endif
				half3 ObjectData20_g32362 = staticSwitch14_g32361;
				half3 WorldData19_g32362 = Off19_g32361;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32362 = WorldData19_g32362;
				#else
				float3 staticSwitch14_g32362 = ObjectData20_g32362;
				#endif
				#ifdef TVE_VERTEX_DATA_WORLD
				float3 staticSwitch14_g32384 = _Vector1;
				#else
				float3 staticSwitch14_g32384 = staticSwitch14_g32362;
				#endif
				half3 Mesh_PivotsOS2291_g31431 = staticSwitch14_g32384;
				float3 temp_output_2283_0_g31431 = ( inputMesh.positionOS - Mesh_PivotsOS2291_g31431 );
				half3 VertexPos40_g32429 = temp_output_2283_0_g31431;
				float3 appendResult74_g32429 = (float3(VertexPos40_g32429.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g32429 = appendResult74_g32429;
				float3 break84_g32429 = VertexPos40_g32429;
				float3 appendResult81_g32429 = (float3(0.0 , break84_g32429.y , break84_g32429.z));
				half3 VertexPosOtherAxis82_g32429 = appendResult81_g32429;
				float ObjectData20_g32403 = 3.14;
				float Bounds_Height374_g31431 = _MaxBoundsInfo.y;
				float WorldData19_g32403 = ( Bounds_Height374_g31431 * 3.14 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32403 = WorldData19_g32403;
				#else
				float staticSwitch14_g32403 = ObjectData20_g32403;
				#endif
				float Motion_Max_Bending1133_g31431 = staticSwitch14_g32403;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32396 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32399 = localObjectPosition_UNITY_MATRIX_M14_g32396;
				float4 transform68_g32396 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32396.xyz = GetAbsolutePositionWS((transform68_g32396).xyz);
				float3 appendResult93_g32396 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float4 transform62_g32396 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult93_g32396 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32396.xyz = GetAbsolutePositionWS((transform62_g32396).xyz);
				float3 ObjectPositionWithPivots28_g32396 = ( (transform68_g32396).xyz - (transform62_g32396).xyz );
				half3 On20_g32399 = ObjectPositionWithPivots28_g32396;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32399 = On20_g32399;
				#else
				float3 staticSwitch14_g32399 = Off19_g32399;
				#endif
				half3 ObjectData20_g32400 = staticSwitch14_g32399;
				half3 WorldData19_g32400 = Off19_g32399;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32400 = WorldData19_g32400;
				#else
				float3 staticSwitch14_g32400 = ObjectData20_g32400;
				#endif
				float3 temp_output_66_0_g32396 = staticSwitch14_g32400;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32396 = ( temp_output_66_0_g32396 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32396 = temp_output_66_0_g32396;
				#endif
				half3 ObjectData20_g32401 = staticSwitch13_g32396;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				half3 WorldData19_g32401 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32401 = WorldData19_g32401;
				#else
				float3 staticSwitch14_g32401 = ObjectData20_g32401;
				#endif
				float2 temp_output_39_38_g32394 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32401).xz ) );
				half4 Legacy33_g32402 = tex2Dlod( TVE_MotionTex, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Vegetation33_g32402 = tex2Dlod( TVE_MotionTex_Vegetation, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Grass33_g32402 = tex2Dlod( TVE_MotionTex_Grass, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Objects33_g32402 = tex2Dlod( TVE_MotionTex_Objects, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 Custom33_g32402 = tex2Dlod( TVE_MotionTex_User, float4( temp_output_39_38_g32394, 0, 0.0) );
				half4 localUSE_BUFFERS33_g32402 = USE_BUFFERS( Legacy33_g32402 , Vegetation33_g32402 , Grass33_g32402 , Objects33_g32402 , Custom33_g32402 );
				float4 break322_g32350 = localUSE_BUFFERS33_g32402;
				half Wind_Power369_g32350 = saturate( ( (break322_g32350.z*2.0 + -1.0) + TVE_WindPower ) );
				half Wind_Power_103106_g31431 = Wind_Power369_g32350;
				float3 appendResult323_g32350 = (float3(break322_g32350.x , 0.0 , break322_g32350.y));
				float3 temp_output_324_0_g32350 = (appendResult323_g32350*2.0 + -1.0);
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				float3 temp_output_339_0_g32350 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_324_0_g32350 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Wind_DirectionOS39_g31431 = (temp_output_339_0_g32350).xz;
				half Motion_Use1056_g31431 = _Motion_10;
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch160_g32370 = TVE_NoiseSpeed_Grass;
				#else
				float2 staticSwitch160_g32370 = TVE_NoiseSpeed_Vegetation;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g32372 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32375 = localObjectPosition_UNITY_MATRIX_M14_g32372;
				float4 transform68_g32372 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32372.xyz = GetAbsolutePositionWS((transform68_g32372).xyz);
				float3 appendResult95_g32372 = (float3(inputMesh.ase_texcoord.z , 0.0 , inputMesh.ase_texcoord.w));
				float4 transform62_g32372 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32372 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32372.xyz = GetAbsolutePositionWS((transform62_g32372).xyz);
				float3 ObjectPositionWithPivots28_g32372 = ( (transform68_g32372).xyz - (transform62_g32372).xyz );
				half3 On20_g32375 = ObjectPositionWithPivots28_g32372;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32375 = On20_g32375;
				#else
				float3 staticSwitch14_g32375 = Off19_g32375;
				#endif
				half3 ObjectData20_g32376 = staticSwitch14_g32375;
				half3 WorldData19_g32376 = Off19_g32375;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32376 = WorldData19_g32376;
				#else
				float3 staticSwitch14_g32376 = ObjectData20_g32376;
				#endif
				float3 temp_output_66_0_g32372 = staticSwitch14_g32376;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32372 = ( temp_output_66_0_g32372 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32372 = temp_output_66_0_g32372;
				#endif
				half3 ObjectData20_g32371 = staticSwitch13_g32372;
				half3 WorldData19_g32371 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32371 = WorldData19_g32371;
				#else
				float3 staticSwitch14_g32371 = ObjectData20_g32371;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch164_g32370 = (ase_worldPos).xz;
				#else
				float2 staticSwitch164_g32370 = (staticSwitch14_g32371).xz;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float staticSwitch161_g32370 = TVE_NoiseSize_Grass;
				#else
				float staticSwitch161_g32370 = TVE_NoiseSize_Vegetation;
				#endif
				float2 panner73_g32370 = ( _TimeParameters.x * staticSwitch160_g32370 + ( staticSwitch164_g32370 * staticSwitch161_g32370 ));
				float4 tex2DNode75_g32370 = tex2Dlod( TVE_NoiseTex, float4( panner73_g32370, 0, 0.0) );
				float4 saferPower77_g32370 = max( abs( tex2DNode75_g32370 ) , 0.0001 );
				float4 temp_cast_9 = (TVE_NoiseContrast).xxxx;
				float4 break142_g32370 = pow( saferPower77_g32370 , temp_cast_9 );
				half Global_NoiseTex_R34_g31431 = break142_g32370.r;
				half Input_Speed62_g32427 = _MotionSpeed_10;
				float mulTime373_g32427 = _TimeParameters.x * Input_Speed62_g32427;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32409 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32412 = localObjectPosition_UNITY_MATRIX_M14_g32409;
				float4 transform68_g32409 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32409.xyz = GetAbsolutePositionWS((transform68_g32409).xyz);
				float3 appendResult95_g32409 = (float3(inputMesh.ase_texcoord.z , 0.0 , inputMesh.ase_texcoord.w));
				float4 transform62_g32409 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32409 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32409.xyz = GetAbsolutePositionWS((transform62_g32409).xyz);
				float3 ObjectPositionWithPivots28_g32409 = ( (transform68_g32409).xyz - (transform62_g32409).xyz );
				half3 On20_g32412 = ObjectPositionWithPivots28_g32409;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32412 = On20_g32412;
				#else
				float3 staticSwitch14_g32412 = Off19_g32412;
				#endif
				half3 ObjectData20_g32413 = staticSwitch14_g32412;
				half3 WorldData19_g32413 = Off19_g32412;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32413 = WorldData19_g32413;
				#else
				float3 staticSwitch14_g32413 = ObjectData20_g32413;
				#endif
				float3 temp_output_66_0_g32409 = staticSwitch14_g32413;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32409 = ( temp_output_66_0_g32409 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32409 = temp_output_66_0_g32409;
				#endif
				float3 break9_g32409 = staticSwitch13_g32409;
				half Variation_Complex102_g32406 = frac( ( inputMesh.ase_color.r + ( break9_g32409.x + break9_g32409.z ) ) );
				float ObjectData20_g32408 = Variation_Complex102_g32406;
				half Variation_Simple105_g32406 = inputMesh.ase_color.r;
				float WorldData19_g32408 = Variation_Simple105_g32406;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32408 = WorldData19_g32408;
				#else
				float staticSwitch14_g32408 = ObjectData20_g32408;
				#endif
				half Variation3073_g31431 = staticSwitch14_g32408;
				half Motion_Variation284_g32427 = ( _MotionVariation_10 * Variation3073_g31431 );
				float2 appendResult344_g32427 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 Motion_Scale287_g32427 = ( _MotionScale_10 * appendResult344_g32427 );
				half2 Sine_MinusOneToOne281_g32427 = sin( ( mulTime373_g32427 + Motion_Variation284_g32427 + Motion_Scale287_g32427 ) );
				float2 temp_cast_11 = (1.0).xx;
				half Input_Turbulence327_g32427 = Global_NoiseTex_R34_g31431;
				float2 lerpResult321_g32427 = lerp( Sine_MinusOneToOne281_g32427 , temp_cast_11 , Input_Turbulence327_g32427);
				half2 Motion_Bending2258_g31431 = ( ( _MotionAmplitude_10 * Motion_Max_Bending1133_g31431 ) * Wind_Power_103106_g31431 * Wind_DirectionOS39_g31431 * Motion_Use1056_g31431 * Global_NoiseTex_R34_g31431 * lerpResult321_g32427 );
				half Motion_UseInteraction2097_g31431 = _Motion_Interaction;
				half Motion_InteractionMask66_g31431 = break322_g32350.w;
				float lerpResult3307_g31431 = lerp( 1.0 , Variation3073_g31431 , _InteractionVariation);
				half2 Motion_Interaction53_g31431 = ( _InteractionAmplitude * Motion_Max_Bending1133_g31431 * Motion_UseInteraction2097_g31431 * Motion_InteractionMask66_g31431 * Motion_InteractionMask66_g31431 * Wind_DirectionOS39_g31431 * lerpResult3307_g31431 );
				float2 lerpResult109_g31431 = lerp( Motion_Bending2258_g31431 , Motion_Interaction53_g31431 , Motion_InteractionMask66_g31431);
				half Mesh_Motion_182_g31431 = inputMesh.ase_texcoord3.x;
				float2 break143_g31431 = ( lerpResult109_g31431 * Mesh_Motion_182_g31431 );
				half Motion_Z190_g31431 = break143_g31431.y;
				half Angle44_g32429 = Motion_Z190_g31431;
				half3 VertexPos40_g32421 = ( VertexPosRotationAxis50_g32429 + ( VertexPosOtherAxis82_g32429 * cos( Angle44_g32429 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g32429 ) * sin( Angle44_g32429 ) ) );
				float3 appendResult74_g32421 = (float3(0.0 , 0.0 , VertexPos40_g32421.z));
				half3 VertexPosRotationAxis50_g32421 = appendResult74_g32421;
				float3 break84_g32421 = VertexPos40_g32421;
				float3 appendResult81_g32421 = (float3(break84_g32421.x , break84_g32421.y , 0.0));
				half3 VertexPosOtherAxis82_g32421 = appendResult81_g32421;
				half Motion_X216_g31431 = break143_g31431.x;
				half Angle44_g32421 = -Motion_X216_g31431;
				half Motion_Scale321_g32419 = ( _MotionScale_32 * 10.0 );
				half Input_Speed62_g32419 = _MotionSpeed_32;
				float mulTime349_g32419 = _TimeParameters.x * Input_Speed62_g32419;
				float Motion_Variation330_g32419 = ( _MotionVariation_32 * inputMesh.ase_color.r );
				float Bounds_Radius121_g31431 = _MaxBoundsInfo.x;
				half Input_Amplitude58_g32419 = ( _MotionAmplitude_32 * Bounds_Radius121_g31431 * 0.1 );
				float3 appendResult345_g32419 = (float3(inputMesh.ase_color.r , ( 1.0 - inputMesh.ase_color.r ) , inputMesh.ase_color.r));
				half Global_NoiseTex_B132_g31431 = break142_g32370.b;
				half Mesh_Motion_3144_g31431 = inputMesh.ase_texcoord3.z;
				half Motion_Use322013_g31431 = _Motion_32;
				float lerpResult376_g32350 = lerp( 0.1 , 1.0 , Wind_Power369_g32350);
				half Wind_Power_323115_g31431 = lerpResult376_g32350;
				half3 Motion_Flutter263_g31431 = ( ( sin( ( ( ( ase_worldPos.x + ase_worldPos.y + ase_worldPos.z ) * Motion_Scale321_g32419 ) + mulTime349_g32419 + Motion_Variation330_g32419 ) ) * Input_Amplitude58_g32419 * appendResult345_g32419 ) * ( ( Global_NoiseTex_R34_g31431 + Global_NoiseTex_B132_g31431 ) * Mesh_Motion_3144_g31431 * Motion_Use322013_g31431 * Wind_Power_323115_g31431 ) );
				half Wind_Mode3167_g31431 = TVE_WindMode;
				float3 lerpResult3168_g31431 = lerp( inputMesh.positionOS , ( ( VertexPosRotationAxis50_g32421 + ( VertexPosOtherAxis82_g32421 * cos( Angle44_g32421 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g32421 ) * sin( Angle44_g32421 ) ) ) + Motion_Flutter263_g31431 ) , Wind_Mode3167_g31431);
				float3 Vertex_Motion_Object833_g31431 = lerpResult3168_g31431;
				float3 appendResult2043_g31431 = (float3(Motion_X216_g31431 , 0.0 , Motion_Z190_g31431));
				float3 lerpResult3173_g31431 = lerp( inputMesh.positionOS , ( ( inputMesh.positionOS + appendResult2043_g31431 ) + Motion_Flutter263_g31431 ) , Wind_Mode3167_g31431);
				float3 Vertex_Motion_World1118_g31431 = lerpResult3173_g31431;
				float3 temp_output_3331_0_g31431 = ( ( _VertexCat * _VertexMotionSpace * _VertexMotionMode * _VertexDataMode ) + Vertex_Motion_World1118_g31431 );
				#if defined(TVE_VERTEX_DATA_OBJECT)
				float3 staticSwitch3312_g31431 = Vertex_Motion_Object833_g31431;
				#elif defined(TVE_VERTEX_DATA_WORLD)
				float3 staticSwitch3312_g31431 = temp_output_3331_0_g31431;
				#elif defined(TVE_VERTEX_DATA_BATCHED)
				float3 staticSwitch3312_g31431 = temp_output_3331_0_g31431;
				#else
				float3 staticSwitch3312_g31431 = Vertex_Motion_Object833_g31431;
				#endif
				half3 ObjectData20_g32349 = staticSwitch3312_g31431;
				half3 WorldData19_g32349 = Vertex_Motion_World1118_g31431;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32349 = WorldData19_g32349;
				#else
				float3 staticSwitch14_g32349 = ObjectData20_g32349;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g32365 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32368 = localObjectPosition_UNITY_MATRIX_M14_g32365;
				float4 transform68_g32365 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32365.xyz = GetAbsolutePositionWS((transform68_g32365).xyz);
				float3 appendResult93_g32365 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float4 transform62_g32365 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult93_g32365 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32365.xyz = GetAbsolutePositionWS((transform62_g32365).xyz);
				float3 ObjectPositionWithPivots28_g32365 = ( (transform68_g32365).xyz - (transform62_g32365).xyz );
				half3 On20_g32368 = ObjectPositionWithPivots28_g32365;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32368 = On20_g32368;
				#else
				float3 staticSwitch14_g32368 = Off19_g32368;
				#endif
				half3 ObjectData20_g32369 = staticSwitch14_g32368;
				half3 WorldData19_g32369 = Off19_g32368;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32369 = WorldData19_g32369;
				#else
				float3 staticSwitch14_g32369 = ObjectData20_g32369;
				#endif
				float3 temp_output_66_0_g32365 = staticSwitch14_g32369;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32365 = ( temp_output_66_0_g32365 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32365 = temp_output_66_0_g32365;
				#endif
				float temp_output_7_0_g32416 = TVE_SizeFadeEnd;
				float ObjectData20_g32364 = saturate( ( ( ( distance( _WorldSpaceCameraPos , staticSwitch13_g32365 ) * _GlobalSizeFade ) - temp_output_7_0_g32416 ) / ( TVE_SizeFadeStart - temp_output_7_0_g32416 ) ) );
				float WorldData19_g32364 = 1.0;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32364 = WorldData19_g32364;
				#else
				float staticSwitch14_g32364 = ObjectData20_g32364;
				#endif
				float Vertex_SizeFade1740_g31431 = staticSwitch14_g32364;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32355 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32358 = localObjectPosition_UNITY_MATRIX_M14_g32355;
				float4 transform68_g32355 = mul(GetObjectToWorldMatrix(),float4(inputMesh.positionOS,1));
				transform68_g32355.xyz = GetAbsolutePositionWS((transform68_g32355).xyz);
				float3 appendResult95_g32355 = (float3(inputMesh.ase_texcoord.z , 0.0 , inputMesh.ase_texcoord.w));
				float4 transform62_g32355 = mul(GetObjectToWorldMatrix(),float4( ( inputMesh.positionOS - ( appendResult95_g32355 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32355.xyz = GetAbsolutePositionWS((transform62_g32355).xyz);
				float3 ObjectPositionWithPivots28_g32355 = ( (transform68_g32355).xyz - (transform62_g32355).xyz );
				half3 On20_g32358 = ObjectPositionWithPivots28_g32355;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32358 = On20_g32358;
				#else
				float3 staticSwitch14_g32358 = Off19_g32358;
				#endif
				half3 ObjectData20_g32359 = staticSwitch14_g32358;
				half3 WorldData19_g32359 = Off19_g32358;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32359 = WorldData19_g32359;
				#else
				float3 staticSwitch14_g32359 = ObjectData20_g32359;
				#endif
				float3 temp_output_66_0_g32355 = staticSwitch14_g32359;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32355 = ( temp_output_66_0_g32355 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32355 = temp_output_66_0_g32355;
				#endif
				half3 ObjectData20_g32354 = staticSwitch13_g32355;
				half3 WorldData19_g32354 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32354 = WorldData19_g32354;
				#else
				float3 staticSwitch14_g32354 = ObjectData20_g32354;
				#endif
				float2 temp_output_43_38_g32352 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32354).xz ) );
				half4 Legacy33_g32353 = tex2Dlod( TVE_ExtrasTex, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Vegetation33_g32353 = tex2Dlod( TVE_ExtrasTex_Vegetation, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Grass33_g32353 = tex2Dlod( TVE_ExtrasTex_Grass, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Objects33_g32353 = tex2Dlod( TVE_ExtrasTex_Objects, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 Custom33_g32353 = tex2Dlod( TVE_ExtrasTex_User, float4( temp_output_43_38_g32352, 0, 0.0) );
				half4 localUSE_BUFFERS33_g32353 = USE_BUFFERS( Legacy33_g32353 , Vegetation33_g32353 , Grass33_g32353 , Objects33_g32353 , Custom33_g32353 );
				float4 break49_g32352 = localUSE_BUFFERS33_g32353;
				half Global_ExtrasTex_G305_g31431 = break49_g32352.y;
				float lerpResult346_g31431 = lerp( 1.0 , Global_ExtrasTex_G305_g31431 , _GlobalSize);
				float ObjectData20_g32363 = ( lerpResult346_g31431 * _LocalSize );
				float WorldData19_g32363 = 1.0;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g32363 = WorldData19_g32363;
				#else
				float staticSwitch14_g32363 = ObjectData20_g32363;
				#endif
				half Vertex_Size1741_g31431 = staticSwitch14_g32363;
				float3 normalizeResult2696_g31431 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 break2709_g31431 = cross( normalizeResult2696_g31431 , half3(0,1,0) );
				float3 appendResult2710_g31431 = (float3(-break2709_g31431.z , 0.0 , break2709_g31431.x));
				float3 appendResult2667_g31431 = (float3(inputMesh.ase_color.r , 0.5 , inputMesh.ase_color.r));
				float3 normalizeResult2210_g31431 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float dotResult2212_g31431 = dot( normalizeResult2210_g31431 , float3(0,1,0) );
				half Mask_HView2656_g31431 = abs( dotResult2212_g31431 );
				float saferPower2652_g31431 = max( Mask_HView2656_g31431 , 0.0001 );
				half3 Grass_Coverage2661_g31431 = ( ( ( mul( GetWorldToObjectMatrix(), float4( appendResult2710_g31431 , 0.0 ) ).xyz * ( _PerspectivePushValue + _PerspectiveCat ) ) + ( (appendResult2667_g31431*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * inputMesh.ase_color.a * pow( saferPower2652_g31431 , _PerspectiveAngleValue ) );
				float3 Final_VertexPosition890_g31431 = ( ( staticSwitch14_g32349 * Vertex_SizeFade1740_g31431 * Vertex_Size1741_g31431 ) + Mesh_PivotsOS2291_g31431 + Grass_Coverage2661_g31431 );
				
				half2 Noise_UVs3274_g31431 = ( (ase_worldPos).xz * ( ( _NoiseScaleValue * 0.1 ) + _MoiseCat ) );
				float temp_output_7_0_g32314 = _NoiseMinValue;
				half Noise_Mask3162_g31431 = saturate( ( ( tex2Dlod( _NoiseTex, float4( Noise_UVs3274_g31431, 0, 0.0) ).r - temp_output_7_0_g32314 ) / ( _NoiseMaxValue - temp_output_7_0_g32314 ) ) );
				float4 lerpResult2800_g31431 = lerp( _NoiseTintTwo , _NoiseTintOne , Noise_Mask3162_g31431);
				half3 Noise_Tint2802_g31431 = (lerpResult2800_g31431).rgb;
				float3 vertexToFrag3225_g31431 = Noise_Tint2802_g31431;
				outputPackedVaryingsMeshToPS.ase_texcoord7.xyz = vertexToFrag3225_g31431;
				half Global_NoiseTex_H2869_g31431 = pow( abs( tex2DNode75_g32370.r ) , TVE_NoiseHighlight );
				half3 Highlight_Tint3231_g31431 = ( ( (_MotionHighlightColor).rgb * Global_NoiseTex_H2869_g31431 * Wind_Power_103106_g31431 * Wind_Mode3167_g31431 * inputMesh.ase_color.r ) + float3( 1,1,1 ) );
				float3 vertexToFrag3252_g31431 = Highlight_Tint3231_g31431;
				outputPackedVaryingsMeshToPS.ase_texcoord9.xyz = vertexToFrag3252_g31431;
				
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;
				outputPackedVaryingsMeshToPS.ase_texcoord8 = inputMesh.ase_texcoord;
				outputPackedVaryingsMeshToPS.ase_texcoord10 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord7.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord9.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Final_VertexPosition890_g31431;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS = inputMesh.normalOS;
				inputMesh.tangentOS = inputMesh.tangentOS;
				return inputMesh;
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh)
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS = (PackedVaryingsMeshToPS)0;
				AttributesMesh defaultMesh = inputMesh;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification( inputMesh, _TimeParameters.xyz, outputPackedVaryingsMeshToPS);

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
				float4 VPASSpreviousPositionCS;
				float4 VPASSpositionCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(positionRWS, 1.0));

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if (forceNoMotion)
				{
					VPASSpreviousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
				}
				else
				{
					bool hasDeformation = unity_MotionVectorsParams.x > 0.0;
					float3 effectivePositionOS = (hasDeformation ? inputMesh.previousPositionOS : defaultMesh.positionOS);
					#if defined(_ADD_PRECOMPUTED_VELOCITY)
					effectivePositionOS -= inputMesh.precomputedVelocity;
					#endif

					#if defined(HAVE_MESH_MODIFICATION)
						AttributesMesh previousMesh = defaultMesh;
						previousMesh.positionOS = effectivePositionOS ;
						PackedVaryingsMeshToPS test = (PackedVaryingsMeshToPS)0;
						float3 curTime = _TimeParameters.xyz;
						previousMesh = ApplyMeshModification(previousMesh, _LastTimeParameters.xyz, test);
						_TimeParameters.xyz = curTime;
						float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.positionOS);
					#else
						float3 previousPositionRWS = TransformPreviousObjectToWorld(effectivePositionOS);
					#endif

					#ifdef ATTRIBUTES_NEED_NORMAL
						float3 normalWS = TransformPreviousObjectToWorldNormal(defaultMesh.normalOS);
					#else
						float3 normalWS = float3(0.0, 0.0, 0.0);
					#endif

					#if defined(HAVE_VERTEX_MODIFICATION)
						//ApplyVertexModification(inputMesh, normalWS, previousPositionRWS, _LastTimeParameters.xyz);
					#endif

					VPASSpreviousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
				}
				#endif

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz = normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.interp03.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.interp04.xyzw = inputMesh.uv2;

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					outputPackedVaryingsMeshToPS.vpassPositionCS = float3(VPASSpositionCS.xyw);
					outputPackedVaryingsMeshToPS.vpassPreviousPositionCS = float3(VPASSpreviousPositionCS.xyw);
				#endif
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 previousPositionOS : TEXCOORD4;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						float3 precomputedVelocity : TEXCOORD5;
					#endif
				#endif
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					o.previousPositionOS = v.previousPositionOS;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						o.precomputedVelocity = v.precomputedVelocity;
					#endif
				#endif
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					o.previousPositionOS = patch[0].previousPositionOS * bary.x + patch[1].previousPositionOS * bary.y + patch[2].previousPositionOS * bary.z;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						o.precomputedVelocity = patch[0].precomputedVelocity * bary.x + patch[1].precomputedVelocity * bary.y + patch[2].precomputedVelocity * bary.z;
					#endif
				#endif
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag(PackedVaryingsMeshToPS packedInput,
					#ifdef OUTPUT_SPLIT_LIGHTING
						out float4 outColor : SV_Target0,
						out float4 outDiffuseLighting : SV_Target1,
						OUTPUT_SSSBUFFER(outSSSBuffer)
					#else
						out float4 outColor : SV_Target0
					#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
						, out float4 outMotionVec : SV_Target1
					#endif
					#endif
					#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
					#endif
					
						)
			{
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					outMotionVec = float4(2.0, 0.0, 0.0, 0.0);
				#endif

				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				float3 positionRWS = packedInput.interp00.xyz;
				float3 normalWS = packedInput.interp01.xyz;
				float4 tangentWS = packedInput.interp02.xyzw;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);
				input.texCoord1 = packedInput.interp03.xyzw;
				input.texCoord2 = packedInput.interp04.xyzw;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE(packedInput.cullFace, true, false);
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				input.positionSS.xy = _OffScreenRendering > 0 ? (input.positionSS.xy * _OffScreenDownsampleFactor) : input.positionSS.xy;
				uint2 tileIndex = uint2(input.positionSS.xy) / GetTileSize ();

				PositionInputs posInput = GetPositionInput( input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS.xyz, tileIndex );

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float temp_output_7_0_g32317 = _GradientMinValue;
				float4 lerpResult2779_g31431 = lerp( _GradientColorTwo , _GradientColorOne , saturate( ( ( packedInput.ase_color.a - temp_output_7_0_g32317 ) / ( ( _GradientMaxValue + _GradientCat ) - temp_output_7_0_g32317 ) ) ));
				half3 Gradient_Tint2784_g31431 = (lerpResult2779_g31431).rgb;
				float3 vertexToFrag3225_g31431 = packedInput.ase_texcoord7.xyz;
				half2 Main_UVs15_g31431 = ( ( packedInput.ase_texcoord8.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g31431 = tex2D( _MainAlbedoTex, Main_UVs15_g31431 );
				float4 temp_output_51_0_g31431 = ( _MainColor * tex2DNode29_g31431 );
				half3 Main_AlbedoRaw99_g31431 = (temp_output_51_0_g31431).rgb;
				float3 vertexToFrag3252_g31431 = packedInput.ase_texcoord9.xyz;
				half3 Main_AlbedoTinted2808_g31431 = ( Gradient_Tint2784_g31431 * vertexToFrag3225_g31431 * Main_AlbedoRaw99_g31431 * vertexToFrag3252_g31431 );
				float3 localObjectPosition_UNITY_MATRIX_M14_g32386 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32389 = localObjectPosition_UNITY_MATRIX_M14_g32386;
				float4 transform68_g32386 = mul(GetObjectToWorldMatrix(),packedInput.ase_texcoord10);
				transform68_g32386.xyz = GetAbsolutePositionWS((transform68_g32386).xyz);
				float3 appendResult95_g32386 = (float3(packedInput.ase_texcoord8.z , 0.0 , packedInput.ase_texcoord8.w));
				float4 transform62_g32386 = mul(GetObjectToWorldMatrix(),float4( ( packedInput.ase_texcoord10.xyz - ( appendResult95_g32386 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32386.xyz = GetAbsolutePositionWS((transform62_g32386).xyz);
				float3 ObjectPositionWithPivots28_g32386 = ( (transform68_g32386).xyz - (transform62_g32386).xyz );
				half3 On20_g32389 = ObjectPositionWithPivots28_g32386;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32389 = On20_g32389;
				#else
				float3 staticSwitch14_g32389 = Off19_g32389;
				#endif
				half3 ObjectData20_g32390 = staticSwitch14_g32389;
				half3 WorldData19_g32390 = Off19_g32389;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32390 = WorldData19_g32390;
				#else
				float3 staticSwitch14_g32390 = ObjectData20_g32390;
				#endif
				float3 temp_output_66_0_g32386 = staticSwitch14_g32390;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32386 = ( temp_output_66_0_g32386 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32386 = temp_output_66_0_g32386;
				#endif
				half3 ObjectData20_g32392 = staticSwitch13_g32386;
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				half3 WorldData19_g32392 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32392 = WorldData19_g32392;
				#else
				float3 staticSwitch14_g32392 = ObjectData20_g32392;
				#endif
				float2 temp_output_35_38_g32385 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32392).xz ) );
				half4 Legacy33_g32391 = tex2D( TVE_ColorsTex, temp_output_35_38_g32385 );
				half4 Vegetation33_g32391 = tex2D( TVE_ColorsTex_Vegetation, temp_output_35_38_g32385 );
				half4 Grass33_g32391 = tex2D( TVE_ColorsTex_Grass, temp_output_35_38_g32385 );
				half4 Objects33_g32391 = tex2D( TVE_ColorsTex_Objects, temp_output_35_38_g32385 );
				half4 Custom33_g32391 = tex2D( TVE_ColorsTex_User, temp_output_35_38_g32385 );
				half4 localUSE_BUFFERS33_g32391 = USE_BUFFERS( Legacy33_g32391 , Vegetation33_g32391 , Grass33_g32391 , Objects33_g32391 , Custom33_g32391 );
				float4 temp_output_45_0_g32385 = localUSE_BUFFERS33_g32391;
				half3 Global_ColorsTex_RGB1700_g31431 = (temp_output_45_0_g32385).xyz;
				float lerpResult2103_g31431 = lerp( 1.0 , ( 1.0 - packedInput.ase_color.a ) , _ColorsMaskValue);
				float3 lerpResult108_g31431 = lerp( float3( 1,1,1 ) , ( (_LocalColors).rgb * ( Global_ColorsTex_RGB1700_g31431 * 4.594794 ) ) , ( _GlobalColors * lerpResult2103_g31431 ));
				half3 Global_Colors1954_g31431 = lerpResult108_g31431;
				float3 temp_output_123_0_g31431 = ( Main_AlbedoTinted2808_g31431 * Global_Colors1954_g31431 );
				half3 Main_AlbedoColored863_g31431 = temp_output_123_0_g31431;
				half3 Blend_Albedo265_g31431 = Main_AlbedoColored863_g31431;
				float3 lerpResult2929_g31431 = lerp( float3( 1,1,1 ) , (TVE_MainLightParams).rgb , _SubsurfaceLightValue);
				half3 Subsurface_Color1722_g31431 = ( (_SubsurfaceColor).rgb * lerpResult2929_g31431 );
				half Global_ColorsTex_A1701_g31431 = (temp_output_45_0_g32385).w;
				float lerpResult1720_g31431 = lerp( 1.0 , Global_ColorsTex_A1701_g31431 , _GlobalHealthiness);
				half Subsurface_Intensity1752_g31431 = ( ( _SubsurfaceValue * lerpResult1720_g31431 ) + _SubsurfaceCat );
				float lerpResult3219_g31431 = lerp( 1.0 , packedInput.ase_color.a , _SubsurfaceMaskValue);
				half Subsurface_Mask1557_g31431 = lerpResult3219_g31431;
				half3 Subsurface_Transmission884_g31431 = ( Subsurface_Color1722_g31431 * Subsurface_Intensity1752_g31431 * Subsurface_Mask1557_g31431 );
				float3 normalizeResult1983_g31431 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float dotResult785_g31431 = dot( -TVE_MainLightDirection , normalizeResult1983_g31431 );
				float saferPower1624_g31431 = max( (dotResult785_g31431*0.5 + 0.5) , 0.0001 );
				#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch1602_g31431 = 0.0;
				#else
				float staticSwitch1602_g31431 = ( pow( saferPower1624_g31431 , _SubsurfaceAngleValue ) * _SubsurfaceViewValue );
				#endif
				half Mask_Subsurface_View782_g31431 = staticSwitch1602_g31431;
				half3 Subsurface_Deferred1693_g31431 = ( Subsurface_Transmission884_g31431 * Mask_Subsurface_View782_g31431 );
				half3 Blend_AlbedoAndSubsurface149_g31431 = ( Blend_Albedo265_g31431 + Subsurface_Deferred1693_g31431 );
				half3 Global_OverlayColor1758_g31431 = (TVE_OverlayColor).rgb;
				float4 tex2DNode117_g31431 = tex2D( _MainNormalTex, Main_UVs15_g31431 );
				float2 appendResult88_g32418 = (float2(tex2DNode117_g31431.a , tex2DNode117_g31431.g));
				float2 temp_output_90_0_g32418 = ( (appendResult88_g32418*2.0 + -1.0) * _MainNormalValue );
				float2 break93_g32418 = temp_output_90_0_g32418;
				half Main_NormalY2095_g31431 = break93_g32418.y;
				half Overlay_Contrast1405_g31431 = _OverlayContrastValue;
				half Global_OverlayIntensity154_g31431 = TVE_OverlayIntensity;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32355 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32358 = localObjectPosition_UNITY_MATRIX_M14_g32355;
				float4 transform68_g32355 = mul(GetObjectToWorldMatrix(),packedInput.ase_texcoord10);
				transform68_g32355.xyz = GetAbsolutePositionWS((transform68_g32355).xyz);
				float3 appendResult95_g32355 = (float3(packedInput.ase_texcoord8.z , 0.0 , packedInput.ase_texcoord8.w));
				float4 transform62_g32355 = mul(GetObjectToWorldMatrix(),float4( ( packedInput.ase_texcoord10.xyz - ( appendResult95_g32355 * _vertex_pivot_mode ) ) , 0.0 ));
				transform62_g32355.xyz = GetAbsolutePositionWS((transform62_g32355).xyz);
				float3 ObjectPositionWithPivots28_g32355 = ( (transform68_g32355).xyz - (transform62_g32355).xyz );
				half3 On20_g32358 = ObjectPositionWithPivots28_g32355;
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g32358 = On20_g32358;
				#else
				float3 staticSwitch14_g32358 = Off19_g32358;
				#endif
				half3 ObjectData20_g32359 = staticSwitch14_g32358;
				half3 WorldData19_g32359 = Off19_g32358;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32359 = WorldData19_g32359;
				#else
				float3 staticSwitch14_g32359 = ObjectData20_g32359;
				#endif
				float3 temp_output_66_0_g32355 = staticSwitch14_g32359;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g32355 = ( temp_output_66_0_g32355 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g32355 = temp_output_66_0_g32355;
				#endif
				half3 ObjectData20_g32354 = staticSwitch13_g32355;
				half3 WorldData19_g32354 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g32354 = WorldData19_g32354;
				#else
				float3 staticSwitch14_g32354 = ObjectData20_g32354;
				#endif
				float2 temp_output_43_38_g32352 = ( (TVE_VolumeCoord).zw + ( (TVE_VolumeCoord).xy * (staticSwitch14_g32354).xz ) );
				half4 Legacy33_g32353 = tex2D( TVE_ExtrasTex, temp_output_43_38_g32352 );
				half4 Vegetation33_g32353 = tex2D( TVE_ExtrasTex_Vegetation, temp_output_43_38_g32352 );
				half4 Grass33_g32353 = tex2D( TVE_ExtrasTex_Grass, temp_output_43_38_g32352 );
				half4 Objects33_g32353 = tex2D( TVE_ExtrasTex_Objects, temp_output_43_38_g32352 );
				half4 Custom33_g32353 = tex2D( TVE_ExtrasTex_User, temp_output_43_38_g32352 );
				half4 localUSE_BUFFERS33_g32353 = USE_BUFFERS( Legacy33_g32353 , Vegetation33_g32353 , Grass33_g32353 , Objects33_g32353 , Custom33_g32353 );
				float4 break49_g32352 = localUSE_BUFFERS33_g32353;
				half Global_ExtrasTex_B156_g31431 = break49_g32352.z;
				float temp_output_1025_0_g31431 = ( Global_OverlayIntensity154_g31431 * _GlobalOverlay * Global_ExtrasTex_B156_g31431 );
				float lerpResult1065_g31431 = lerp( 1.0 , packedInput.ase_color.r , _OverlayVariationValue);
				half Overlay_Commons1365_g31431 = ( temp_output_1025_0_g31431 * lerpResult1065_g31431 );
				half Overlay_Mask269_g31431 = saturate( ( saturate( ( packedInput.ase_color.a + ( Main_NormalY2095_g31431 * Overlay_Contrast1405_g31431 ) ) ) - ( 1.0 - Overlay_Commons1365_g31431 ) ) );
				float3 lerpResult336_g31431 = lerp( Blend_AlbedoAndSubsurface149_g31431 , Global_OverlayColor1758_g31431 , Overlay_Mask269_g31431);
				half3 Final_Albedo359_g31431 = lerpResult336_g31431;
				half Main_Alpha316_g31431 = (temp_output_51_0_g31431).a;
				float lerpResult354_g31431 = lerp( 1.0 , Main_Alpha316_g31431 , _render_premul);
				half Final_Premultiply355_g31431 = lerpResult354_g31431;
				float3 temp_output_410_0_g31431 = ( Final_Albedo359_g31431 * Final_Premultiply355_g31431 );
				float3 temp_cast_12 = (1.0).xxx;
				half Mesh_Occlusion318_g31431 = packedInput.ase_color.g;
				float saferPower1201_g31431 = max( Mesh_Occlusion318_g31431 , 0.0001 );
				float3 lerpResult2945_g31431 = lerp( (_VertexOcclusionColor).rgb , temp_cast_12 , saturate( pow( saferPower1201_g31431 , ( _VertexOcclusionValue + _OcclusionCat ) ) ));
				half3 Vertex_Occlusion648_g31431 = lerpResult2945_g31431;
				
				float3 appendResult91_g32418 = (float3(temp_output_90_0_g32418 , 1.0));
				half3 Main_Normal137_g31431 = appendResult91_g32418;
				float3 temp_output_13_0_g32320 = Main_Normal137_g31431;
				float3 switchResult12_g32320 = (((isFrontFace>0)?(temp_output_13_0_g32320):(( temp_output_13_0_g32320 * _render_normals_options ))));
				half3 Blend_Normal312_g31431 = switchResult12_g32320;
				half3 Final_Normal366_g31431 = Blend_Normal312_g31431;
				
				float4 tex2DNode35_g31431 = tex2D( _MainMaskTex, Main_UVs15_g31431 );
				half Main_Smoothness227_g31431 = ( tex2DNode35_g31431.a * _MainSmoothnessValue );
				half Blend_Smoothness314_g31431 = Main_Smoothness227_g31431;
				half Global_OverlaySmoothness311_g31431 = TVE_OverlaySmoothness;
				float lerpResult343_g31431 = lerp( Blend_Smoothness314_g31431 , Global_OverlaySmoothness311_g31431 , Overlay_Mask269_g31431);
				half Final_Smoothness371_g31431 = lerpResult343_g31431;
				half Global_Wetness1016_g31431 = ( TVE_Wetness * _GlobalWetness );
				half Global_ExtrasTex_A1033_g31431 = break49_g32352.w;
				float lerpResult1037_g31431 = lerp( Final_Smoothness371_g31431 , saturate( ( Final_Smoothness371_g31431 + Global_Wetness1016_g31431 ) ) , Global_ExtrasTex_A1033_g31431);
				
				float lerpResult240_g31431 = lerp( 1.0 , tex2DNode35_g31431.g , _MainOcclusionValue);
				half Main_Occlusion247_g31431 = lerpResult240_g31431;
				half Blend_Occlusion323_g31431 = Main_Occlusion247_g31431;
				
				float localCustomAlphaClip9_g32414 = ( 0.0 );
				half Main_AlphaRaw1203_g31431 = tex2DNode29_g31431.a;
				float Mesh_Variation16_g31431 = packedInput.ase_color.r;
				float lerpResult2262_g31431 = lerp( 0.9 , Mesh_Variation16_g31431 , _LeavesVariationValue);
				half Global_ExtrasTex_R174_g31431 = break49_g32352.x;
				float lerpResult2624_g31431 = lerp( 1.0 , Global_ExtrasTex_R174_g31431 , _GlobalLeaves);
				half AlphaTreshold2132_g31431 = _Cutoff;
				half Mask_Leaves315_g31431 = ( ( (lerpResult2262_g31431*0.5 + 0.5) - ( 1.0 - ( lerpResult2624_g31431 * _LocalLeaves ) ) ) + AlphaTreshold2132_g31431 );
				half Alpha5_g32414 = ( Main_AlphaRaw1203_g31431 * Mask_Leaves315_g31431 );
				float Alpha9_g32414 = Alpha5_g32414;
				#if _ALPHATEST_ON
				clip(Alpha9_g32414 - _Cutoff);
				#endif
				half Final_Clip914_g31431 = localCustomAlphaClip9_g32414;
				
				surfaceDescription.Albedo = ( temp_output_410_0_g31431 * Vertex_Occlusion648_g31431 );
				surfaceDescription.Normal = Final_Normal366_g31431;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = lerpResult1037_g31431;
				surfaceDescription.Occlusion = Blend_Occlusion323_g31431;
				surfaceDescription.Alpha = Main_Alpha316_g31431;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = Final_Clip914_g31431;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				#ifdef _ASE_BAKEDGI
				surfaceDescription.BakedGI = 0;
				#endif
				#ifdef _ASE_BAKEDBACKGI
				surfaceDescription.BakedBackGI = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription,input, V, posInput, surfaceData, builtinData);

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);

				PreLightData preLightData = GetPreLightData(V, posInput, bsdfData);

				outColor = float4(0.0, 0.0, 0.0, 0.0);
				#ifdef DEBUG_DISPLAY
				#ifdef OUTPUT_SPLIT_LIGHTING
					outDiffuseLighting = 0;
					ENCODE_INTO_SSSBUFFER(surfaceData, posInput.positionSS, outSSSBuffer);
				#endif

				bool viewMaterial = false;
				int bufferSize = int(_DebugViewMaterialArray[0]);
				if (bufferSize != 0)
				{
					bool needLinearToSRGB = false;
					float3 result = float3(1.0, 0.0, 1.0);

					for (int index = 1; index <= bufferSize; index++)
					{
						int indexMaterialProperty = int(_DebugViewMaterialArray[index]);

						if (indexMaterialProperty != 0)
						{
							viewMaterial = true;

							GetPropertiesDataDebug(indexMaterialProperty, result, needLinearToSRGB);
							GetVaryingsDataDebug(indexMaterialProperty, input, result, needLinearToSRGB);
							GetBuiltinDataDebug(indexMaterialProperty, builtinData, result, needLinearToSRGB);
							GetSurfaceDataDebug(indexMaterialProperty, surfaceData, result, needLinearToSRGB);
							GetBSDFDataDebug(indexMaterialProperty, bsdfData, result, needLinearToSRGB);
						}
					}

					if (!needLinearToSRGB)
						result = SRGBToLinear(max(0, result));

					outColor = float4(result, 1.0);
				}

				if (!viewMaterial)
				{
					if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_VALIDATE_DIFFUSE_COLOR || _DebugFullScreenMode == FULLSCREENDEBUGMODE_VALIDATE_SPECULAR_COLOR)
					{
						float3 result = float3(0.0, 0.0, 0.0);

						GetPBRValidatorDebug(surfaceData, result);

						outColor = float4(result, 1.0f);
					}
					else if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_TRANSPARENCY_OVERDRAW)
					{
						float4 result = _DebugTransparencyOverdrawWeight * float4(TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_A);
						outColor = result;
					}
					else
				#endif
					{
				#ifdef _SURFACE_TYPE_TRANSPARENT
						uint featureFlags = LIGHT_FEATURE_MASK_FLAGS_TRANSPARENT;
				#else
						uint featureFlags = LIGHT_FEATURE_MASK_FLAGS_OPAQUE;
				#endif
						float3 diffuseLighting;
						float3 specularLighting;

						LightLoop(V, posInput, preLightData, bsdfData, builtinData, featureFlags, diffuseLighting, specularLighting);

						diffuseLighting *= GetCurrentExposureMultiplier();
						specularLighting *= GetCurrentExposureMultiplier();

				#ifdef OUTPUT_SPLIT_LIGHTING
						if (_EnableSubsurfaceScattering != 0 && ShouldOutputSplitLighting(bsdfData))
						{
							outColor = float4(specularLighting, 1.0);
							outDiffuseLighting = float4(TagLightingForSSS(diffuseLighting), 1.0);
						}
						else
						{
							outColor = float4(diffuseLighting + specularLighting, 1.0);
							outDiffuseLighting = 0;
						}
						ENCODE_INTO_SSSBUFFER(surfaceData, posInput.positionSS, outSSSBuffer);
				#else
						outColor = ApplyBlendMode(diffuseLighting, specularLighting, builtinData.opacity);
						outColor = EvaluateAtmosphericScattering(posInput, V, outColor);
				#endif

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
						float4 VPASSpositionCS = float4(packedInput.vpassPositionCS.xy, 0.0, packedInput.vpassPositionCS.z);
						float4 VPASSpreviousPositionCS = float4(packedInput.vpassPreviousPositionCS.xy, 0.0, packedInput.vpassPreviousPositionCS.z);

						bool forceNoMotion = any(unity_MotionVectorsParams.yw == 0.0);
						if (!forceNoMotion)
						{
							float2 motionVec = CalculateMotionVector(VPASSpositionCS, VPASSpreviousPositionCS);
							EncodeMotionVector(motionVec * 0.5, outMotionVec);
							outMotionVec.zw = 1.0;
						}
				#endif
					}

				#ifdef DEBUG_DISPLAY
				}
				#endif

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}
			ENDHLSL
		}
		
	}
	CustomEditor "TVEShaderCoreGUI"
	
	
}
/*ASEBEGIN
Version=18600
1927;7;1906;1015;2875.892;1084.014;1;True;False
Node;AmplifyShaderEditor.RangedFloatNode;530;-1376,-896;Half;False;Property;_IsAnyPathShader;_IsAnyPathShader;206;1;[HideInInspector];Create;True;0;0;True;0;False;1;0;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;534;-2176,320;Inherit;False;Use TVE_PIVOT_DATA_BAKED;-1;;32434;8da5867b3f9f1834693af40d3eff73f4;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;168;-1984,-896;Half;False;Property;_IsGrassShader;_IsGrassShader;204;1;[HideInInspector];Create;True;0;0;True;0;False;1;0;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;31;-2176,-896;Half;False;Property;_Banner;Banner;0;0;Create;True;0;0;True;1;StyledBanner(Grass Standard Lit);False;0;0;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;81;-1792,-896;Half;False;Property;_IsStandardShader;_IsStandardShader;205;1;[HideInInspector];Create;True;0;0;True;0;False;1;0;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;271;-1552,-896;Half;False;Property;_IsLitShader;_IsLitShader;207;1;[HideInInspector];Create;True;0;0;True;0;False;1;0;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;543;-2176,-384;Inherit;False;Base Shader;1;;31431;856f7164d1c579d43a5cf4968a75ca43;50,1300,1,1298,1,1271,1,1708,1,1962,1,1712,1,1964,1,1969,1,1719,1,893,1,1745,1,1742,1,1718,1,1717,1,1715,1,1714,1,916,0,1949,1,1762,0,1763,0,1776,1,1646,1,1690,1,1757,0,3221,2,1981,0,2807,1,2953,1,3243,1,2172,0,2658,1,1734,0,1737,0,1733,0,1736,0,1968,0,1966,0,1735,0,878,0,1550,0,860,1,2750,1,2260,1,2261,1,2054,0,2032,0,2036,0,2060,0,2062,1,2039,1;0;15;FLOAT3;0;FLOAT3;528;FLOAT3;2489;FLOAT;529;FLOAT;530;FLOAT;531;FLOAT;1235;FLOAT3;1230;FLOAT;1461;FLOAT;1290;FLOAT;721;FLOAT;532;FLOAT;653;FLOAT;629;FLOAT3;534
Node;AmplifyShaderEditor.RangedFloatNode;555;-1552,-768;Half;False;Property;_render_dst;_render_dst;211;1;[HideInInspector];Create;True;2;Opaque;0;Transparent;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;557;-1744,-768;Half;False;Property;_render_src;_render_src;210;1;[HideInInspector];Create;True;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;556;-1376,-768;Half;False;Property;_render_zw;_render_zw;212;1;[HideInInspector];Create;True;2;Opaque;0;Transparent;1;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;559;-2176,-768;Half;False;Property;_render_cutoff;_render_cutoff;208;1;[HideInInspector];Create;True;4;Alpha;0;Premultiply;1;Additive;2;Multiply;3;0;True;0;False;0.5;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;558;-1920,-768;Half;False;Property;_render_cull;_render_cull;209;1;[HideInInspector];Create;True;3;Both;0;Back;1;Front;2;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;535;-2176,256;Inherit;False;Use TVE_IS_GRASS_SHADER;-1;;32433;921559c53826c0142ba6e27dd03eaef2;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;544;-1376,-384;Float;False;True;-1;2;TVEShaderCoreGUI;0;2;BOXOPHOBIC/The Vegetation Engine/Vegetation/Grass Standard Lit;53b46d85872c5b24c8f4f0a1c3fe4c87;True;GBuffer;0;0;GBuffer;35;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;0;True;-25;False;False;False;False;True;True;0;True;-13;255;False;-1;255;True;-12;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;0;True;-14;False;True;1;LightMode=GBuffer;False;0;;0;0;Standard;41;Surface Type;0;  Rendering Pass;1;  Refraction Model;0;    Blending Mode;0;    Blend Preserves Specular;1;  Receive Fog;1;  Back Then Front Rendering;0;  Transparent Depth Prepass;0;  Transparent Depth Postpass;0;  Transparent Writes Motion Vector;0;  Distortion;0;    Distortion Mode;0;    Distortion Depth Test;1;  ZWrite;0;  Z Test;4;Double-Sided;1;Alpha Clipping;1;  Use Shadow Threshold;0;Material Type,InvertActionOnDeselection;0;  Energy Conserving Specular;1;  Transmission;1;Receive Decals;1;Receives SSR;1;Motion Vectors;0;  Add Precomputed Velocity;0;Specular AA;0;Specular Occlusion Mode;1;Override Baked GI;0;Depth Offset;0;DOTS Instancing;1;LOD CrossFade;1;Tessellation;0;  Phong;0;  Strength;0.5,False,-1;  Type;0;  Tess;16,False,-1;  Min;10,False,-1;  Max;25,False,-1;  Edge Length;16,False,-1;  Max Displacement;25,False,-1;Vertex Position;0;0;11;True;True;True;True;True;False;False;False;False;False;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;545;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;META;0;1;META;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;549;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;Motion Vectors;0;5;Motion Vectors;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;0;True;-25;False;False;False;False;True;True;0;True;-8;255;False;-1;255;True;-9;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;1;False;-1;False;False;True;1;LightMode=MotionVectors;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;551;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentBackface;0;7;TransparentBackface;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;1;0;True;-19;0;True;-20;1;0;True;-21;0;True;-22;False;False;False;False;False;False;False;False;True;1;False;-1;False;True;True;True;True;True;0;True;-44;False;False;False;True;0;True;-23;True;0;True;-31;False;True;1;LightMode=TransparentBackface;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;552;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentDepthPrepass;0;8;TransparentDepthPrepass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;True;0;True;-25;True;False;False;False;False;0;False;-1;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=TransparentDepthPrepass;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;550;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;Distortion;0;6;Distortion;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;4;1;False;-1;1;False;-1;4;1;False;-1;1;False;-1;True;1;False;-1;1;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;True;0;True;-10;255;False;-1;255;True;-11;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;False;True;1;LightMode=DistortionVectors;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;546;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;0;True;-25;True;False;False;False;False;0;False;-1;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;554;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;Forward;0;10;Forward;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;1;0;True;-19;0;True;-20;1;0;True;-21;0;True;-22;False;False;False;False;False;False;False;False;True;0;True;-28;False;True;True;True;True;True;0;True;-44;False;False;True;True;0;True;-4;255;False;-1;255;True;-5;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;0;True;-23;True;0;True;-30;False;True;1;LightMode=Forward;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;547;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;SceneSelectionPass;0;3;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;548;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;DepthOnly;0;4;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;0;True;-25;False;False;False;False;True;True;0;True;-6;255;False;-1;255;True;-7;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;1;False;-1;False;False;True;1;LightMode=DepthOnly;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;553;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentDepthPostpass;0;9;TransparentDepthPostpass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;True;0;True;-25;True;False;False;False;False;0;False;-1;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=TransparentDepthPostpass;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.CommentaryNode;408;-2176,128;Inherit;False;1026.438;100;Features;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;37;-2176,-1024;Inherit;False;1023.392;100;Internal;0;;1,0.252,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;33;-2176,-512;Inherit;False;1024.392;100;Final;0;;0,1,0.5,1;0;0
WireConnection;544;0;543;0
WireConnection;544;1;543;528
WireConnection;544;7;543;530
WireConnection;544;8;543;531
WireConnection;544;9;543;532
WireConnection;544;10;543;653
WireConnection;544;11;543;534
ASEEND*/
//CHKSM=5F330039E4AFC89B4C69F900ED2E7078437EA80E