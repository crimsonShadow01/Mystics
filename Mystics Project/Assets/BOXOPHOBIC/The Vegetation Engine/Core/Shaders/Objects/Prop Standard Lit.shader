// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "BOXOPHOBIC/The Vegetation Engine/Objects/Prop Standard Lit"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[StyledBanner(Prop Standard Lit)]_Banner("Banner", Float) = 0
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
		_GlobalOverlay("Global Overlay", Range( 0 , 1)) = 1
		_GlobalWetness("Global Wetness", Range( 0 , 1)) = 1
		[StyledSpace(10)]_GlobalSpace("# Global Space", Float) = 0
		_OverlayContrastValue("Overlay Contrast", Range( 0 , 10)) = 4
		[StyledCategory(Main Settings)]_MainCat("[ Main Cat ]", Float) = 0
		[NoScaleOffset]_MainAlbedoTex("Main Albedo", 2D) = "white" {}
		[NoScaleOffset]_MainNormalTex("Main Normal", 2D) = "gray" {}
		[NoScaleOffset]_MainMaskTex("Main Mask", 2D) = "white" {}
		[Space(10)]_MainUVs("Main UVs", Vector) = (1,1,0,0)
		[HDR]_MainColor("Main Color", Color) = (1,1,1,1)
		_MainNormalValue("Main Normal", Range( -8 , 8)) = 1
		_MainMetallicValue("Main Metallic", Range( 0 , 1)) = 0
		_MainOcclusionValue("Main Occlusion", Range( 0 , 1)) = 1
		_MainSmoothnessValue("Main Smoothness", Range( 0 , 1)) = 1
		[StyledCategory(Detail Settings)]_DetailCat("[ Detail Cat ]", Float) = 0
		[Enum(Off,0,Overlay,1,Replace,2)]_DetailMode("Detail Mode", Float) = 0
		[Enum(Vertex Paint,0,Projection,1)]_DetailTypeMode("Detail Type", Float) = 0
		[Enum(UV 0,0,UV 2,1)]_DetailCoordMode("Detail Coord", Float) = 0
		[Enum(Top,0,Bottom,1)]_DetailProjectionMode("Detail Projection", Float) = 0
		[Enum(Standard,0,Packed,1)]_DetailMapsMode("Detail Maps", Float) = 0
		[Enum(Main Mask,0,Detail Mask,1)]_DetailMaskMode("Detail Mask", Float) = 0
		[StyledSpace(10)]_DetailSpace("# Detail Space", Float) = 0
		[NoScaleOffset]_SecondPackedTex("Detail Packed", 2D) = "white" {}
		[NoScaleOffset]_SecondAlbedoTex("Detail Albedo", 2D) = "white" {}
		[NoScaleOffset]_SecondNormalTex("Detail Normal", 2D) = "gray" {}
		[NoScaleOffset]_SecondMaskTex("Detail Mask", 2D) = "white" {}
		[Space(10)]_SecondUVs("Detail UVs", Vector) = (1,1,0,0)
		[HDR]_SecondColor("Detail Color", Color) = (1,1,1,1)
		_SecondNormalValue("Detail Normal", Range( -8 , 8)) = 1
		_SecondMetallicValue("Detail Metallic", Range( 0 , 1)) = 0
		_SecondOcclusionValue("Detail Occlusion", Range( 0 , 1)) = 1
		_SecondSmoothnessValue("Detail Smoothness", Range( 0 , 1)) = 1
		[Space(10)]_DetailNormalValue("Detail Use Main Normal", Range( 0 , 1)) = 0.5
		[Space(10)]_DetailMeshValue("Detail Mask Offset", Range( -1 , 1)) = 0
		_DetailMaskValue("Detail Mask Power", Range( -1 , 1)) = 0
		_DetailMaskContrast("Detail Mask Contrast", Range( 0 , 1)) = 0.25
		[HideInInspector][ASEDiffusionProfile(_SubsurfaceDiffusion)]_SubsurfaceDiffusion_asset("Subsurface Diffusion", Vector) = (0,0,0,0)
		[StyledMessage(Info, The Object motion feature allows for high quality bending motion and interaction. The motion and global elements are calculated per instance., _VertexMotionMode, 0 , 2, 0)]_ObjectDataMessage("# Object Data Message", Float) = 0
		[StyledMessage(Info, The World motion feature allows for simpler and cheaper translation motion and interaction. The motion is calculated in world space but the global elements are calculated per instance., _VertexMotionMode, 1 , 2, 0)]_WorldDataMessage("# World Data Message", Float) = 0
		[StyledMessage(Info, The Baked pivots feature allows for using per mesh element interaction and elements influence. This feature requires pre baked pivots on prefab conversion. Useful for latge grass meshes., _VertexPivotMode, 1 , 0, 0)]_PivotsMessage("# Pivots Message", Float) = 0
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
		[ASEEnd][StyledMessage(Info, Use the Batching Support option when the object is statically batched. All vertex calculations are done in world space and features like Baked Pivots and Size options are not supported because the object pivot data is missing with static batching., _VertexDataMode, 1 , 2,10)]_BatchingMessage("# Batching Message", Float) = 0
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
		[HideInInspector]_IsPropShader("_IsPropShader", Float) = 1
		[HideInInspector]_IsAnyPathShader("_IsAnyPathShader", Float) = 1
		[HideInInspector]_IsLitShader("_IsLitShader", Float) = 1
		[HideInInspector]_IsStandardShader("_IsStandardShader", Float) = 1
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

			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_VFACE
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_POSITION
			#pragma shader_feature_local TVE_DETAIL_MODE_OFF TVE_DETAIL_MODE_OVERLAY TVE_DETAIL_MODE_REPLACE
			#pragma shader_feature_local TVE_DETAIL_MAPS_STANDARD TVE_DETAIL_MAPS_PACKED
			#pragma shader_feature_local TVE_DETAIL_TYPE_VERTEX_BLUE TVE_DETAIL_TYPE_PROJECTION
			  
			//SHADER INJECTION POINT BEGIN
           //Vegetation Studio (Instanced Indirect)
           #include "Assets/BOXOPHOBIC/The Vegetation Engine/Core/Library/VS_IndirectHD.cginc"
           #pragma instancing_options procedural:setupVSPro forwardadd
           #pragma multi_compile GPU_FRUSTUM_ON __
			//SHADER INJECTION POINT END
			    
			#define TVE_IS_OBJECT_SHADER
			#define TVE_VERTEX_DATA_BATCHED


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
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			CBUFFER_START( UnityPerMaterial )
			float4 _MaxBoundsInfo;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _SecondColor;
			half4 _SecondUVs;
			float4 _SubsurfaceDiffusion_asset;
			float4 _Color;
			half3 _render_normals_options;
			half _Banner;
			half _IsPropShader;
			half _IsAnyPathShader;
			half _BatchingMessage;
			float _MotionVariation_32;
			half _DetailMapsMode;
			half _DetailTypeMode;
			half _GlobalCat;
			half _ObjectDataMessage;
			half _DetailCat;
			half _AdvancedCat;
			float _MotionScale_20;
			half _MainCat;
			float _MotionVariation_30;
			half _RenderMode;
			half _MotionAmplitude_20;
			half _MotionVariation_10;
			half _render_dst;
			half _IsLitShader;
			half _render_src;
			half _render_cull;
			half _GlobalWetness;
			half _SecondSmoothnessValue;
			half _MainSmoothnessValue;
			half _SecondMetallicValue;
			half _MainMetallicValue;
			half _render_premul;
			half _vertex_pivot_mode;
			half _GlobalOverlay;
			half _OverlayContrastValue;
			half _DetailNormalValue;
			half _SecondNormalValue;
			half _DetailMaskContrast;
			half _DetailMaskValue;
			half _DetailMaskMode;
			half _DetailProjectionMode;
			half _DetailMeshValue;
			half _DetailCoordMode;
			half _render_zw;
			half _WorldDataMessage;
			half _render_cutoff;
			float _MotionSpeed_10;
			half _RenderPriority;
			half _MainOcclusionValue;
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
			half _IsStandardShader;
			half _MotionAmplitude_30;
			half _InteractionVariation;
			float _MotionScale_32;
			half _IsTVEShader;
			half _RenderBlend;
			half _RenderZWrite;
			half _MotionAmplitude_32;
			half _RenderCull;
			float _MotionSpeed_30;
			half _PivotsMessage;
			half _MotionAmplitude_10;
			float _MotionScale_10;
			float _MotionSpeed_20;
			half _DetailMode;
			half _RenderClip;
			float _MotionSpeed_32;
			float _MotionScale_30;
			half _RenderNormals;
			half _MainNormalValue;
			half _IsVersion;
			half _RenderingCat;
			half _VertexVariationMode;
			half _MotionVariation_20;
			half _Cutoff;
			half _InteractionAmplitude;
			half _SecondOcclusionValue;
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
			sampler2D _MainAlbedoTex;
			sampler2D _SecondAlbedoTex;
			sampler2D _SecondPackedTex;
			SAMPLER(sampler_SecondPackedTex);
			sampler2D _MainMaskTex;
			SAMPLER(sampler_MainMaskTex);
			sampler2D _SecondMaskTex;
			SAMPLER(sampler_SecondMaskTex);
			half4 TVE_OverlayColor;
			sampler2D _MainNormalTex;
			SAMPLER(sampler_MainNormalTex);
			sampler2D _SecondNormalTex;
			SAMPLER(sampler_SecondNormalTex);
			half TVE_OverlayIntensity;
			sampler2D TVE_ExtrasTex;
			half4 TVE_VolumeCoord;
			sampler2D TVE_ExtrasTex_Vegetation;
			sampler2D TVE_ExtrasTex_Grass;
			sampler2D TVE_ExtrasTex_Objects;
			sampler2D TVE_ExtrasTex_User;
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

				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.tangentOS.xyz);
				float ase_vertexTangentSign = inputMesh.tangentOS.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord6.xyz = ase_worldBitangent;
				
				outputPackedVaryingsMeshToPS.ase_texcoord5 = inputMesh.ase_texcoord;
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;
				outputPackedVaryingsMeshToPS.ase_texcoord7 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord6.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

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
				half2 Main_UVs15_g32109 = ( ( packedInput.ase_texcoord5.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g32109 = tex2D( _MainAlbedoTex, Main_UVs15_g32109 );
				float4 temp_output_51_0_g32109 = ( _MainColor * tex2DNode29_g32109 );
				half3 Main_AlbedoRaw99_g32109 = (temp_output_51_0_g32109).rgb;
				half3 Main_AlbedoTinted2808_g32109 = ( float3(1,1,1) * float3(1,1,1) * Main_AlbedoRaw99_g32109 * float3(1,1,1) );
				half3 Main_AlbedoColored863_g32109 = Main_AlbedoTinted2808_g32109;
				float2 lerpResult1545_g32109 = lerp( packedInput.ase_texcoord5.xy , packedInput.interp03.xy , _DetailCoordMode);
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				#if defined(TVE_DETAIL_TYPE_VERTEX_BLUE)
				float2 staticSwitch3466_g32109 = lerpResult1545_g32109;
				#elif defined(TVE_DETAIL_TYPE_PROJECTION)
				float2 staticSwitch3466_g32109 = (ase_worldPos).xz;
				#else
				float2 staticSwitch3466_g32109 = lerpResult1545_g32109;
				#endif
				half2 Second_UVs17_g32109 = ( ( staticSwitch3466_g32109 * (_SecondUVs).xy ) + (_SecondUVs).zw );
				float4 tex2DNode3380_g32109 = tex2D( _SecondPackedTex, Second_UVs17_g32109 );
				half Packed_Albedo3385_g32109 = tex2DNode3380_g32109.r;
				float4 temp_cast_0 = (Packed_Albedo3385_g32109).xxxx;
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float4 staticSwitch3449_g32109 = tex2D( _SecondAlbedoTex, Second_UVs17_g32109 );
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float4 staticSwitch3449_g32109 = temp_cast_0;
				#else
				float4 staticSwitch3449_g32109 = tex2D( _SecondAlbedoTex, Second_UVs17_g32109 );
				#endif
				half3 Second_Albedo153_g32109 = (( _SecondColor * staticSwitch3449_g32109 )).rgb;
				half3 Second_AlbedoColored1963_g32109 = Second_Albedo153_g32109;
				half Mesh_DetailMask90_g32109 = packedInput.ase_color.b;
				float temp_output_989_0_g32109 = ( ( Mesh_DetailMask90_g32109 - 0.5 ) + _DetailMeshValue );
				float3 lerpResult1537_g32109 = lerp( float3(0,1,0) , float3(0,-1,0) , _DetailProjectionMode);
				float dotResult1532_g32109 = dot( normalWS , lerpResult1537_g32109 );
				#if defined(TVE_DETAIL_TYPE_VERTEX_BLUE)
				float staticSwitch3467_g32109 = temp_output_989_0_g32109;
				#elif defined(TVE_DETAIL_TYPE_PROJECTION)
				float staticSwitch3467_g32109 = ( ( dotResult1532_g32109 * 0.5 ) + _DetailMeshValue );
				#else
				float staticSwitch3467_g32109 = temp_output_989_0_g32109;
				#endif
				half Blend_Source1540_g32109 = staticSwitch3467_g32109;
				float4 tex2DNode35_g32109 = tex2D( _MainMaskTex, Main_UVs15_g32109 );
				half Main_Mask_Raw57_g32109 = tex2DNode35_g32109.b;
				float4 tex2DNode33_g32109 = tex2D( _SecondMaskTex, Second_UVs17_g32109 );
				half Second_Mask81_g32109 = tex2DNode33_g32109.b;
				float lerpResult1327_g32109 = lerp( Main_Mask_Raw57_g32109 , Second_Mask81_g32109 , _DetailMaskMode);
				float temp_output_7_0_g32425 = _DetailMaskContrast;
				float temp_output_973_0_g32109 = saturate( ( ( saturate( ( Blend_Source1540_g32109 + ( Blend_Source1540_g32109 * ( ( ( 1.0 - lerpResult1327_g32109 ) - 0.5 ) + _DetailMaskValue ) ) ) ) - temp_output_7_0_g32425 ) / ( ( 1.0 - _DetailMaskContrast ) - temp_output_7_0_g32425 ) ) );
				half Mask_Detail147_g32109 = temp_output_973_0_g32109;
				float3 lerpResult235_g32109 = lerp( Main_AlbedoColored863_g32109 , ( Main_AlbedoColored863_g32109 * Second_AlbedoColored1963_g32109 * 4.594794 ) , Mask_Detail147_g32109);
				float3 lerpResult208_g32109 = lerp( Main_AlbedoColored863_g32109 , Second_AlbedoColored1963_g32109 , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float3 staticSwitch255_g32109 = Main_AlbedoColored863_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float3 staticSwitch255_g32109 = lerpResult235_g32109;
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float3 staticSwitch255_g32109 = lerpResult208_g32109;
				#else
				float3 staticSwitch255_g32109 = Main_AlbedoColored863_g32109;
				#endif
				half3 Blend_Albedo265_g32109 = staticSwitch255_g32109;
				half3 Blend_AlbedoAndSubsurface149_g32109 = Blend_Albedo265_g32109;
				half3 Global_OverlayColor1758_g32109 = (TVE_OverlayColor).rgb;
				float4 tex2DNode117_g32109 = tex2D( _MainNormalTex, Main_UVs15_g32109 );
				float2 appendResult88_g32418 = (float2(tex2DNode117_g32109.a , tex2DNode117_g32109.g));
				float2 temp_output_90_0_g32418 = ( (appendResult88_g32418*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult91_g32418 = (float3(temp_output_90_0_g32418 , 1.0));
				half3 Main_Normal137_g32109 = appendResult91_g32418;
				float4 tex2DNode145_g32109 = tex2D( _SecondNormalTex, Second_UVs17_g32109 );
				float2 appendResult88_g32315 = (float2(tex2DNode145_g32109.a , tex2DNode145_g32109.g));
				float2 temp_output_90_0_g32315 = ( (appendResult88_g32315*2.0 + -1.0) * _SecondNormalValue );
				float3 appendResult91_g32315 = (float3(temp_output_90_0_g32315 , 1.0));
				half Packed_NormalX3387_g32109 = tex2DNode3380_g32109.a;
				half Packed_NormalY3386_g32109 = tex2DNode3380_g32109.g;
				float2 appendResult88_g32430 = (float2(Packed_NormalX3387_g32109 , Packed_NormalY3386_g32109));
				float2 temp_output_90_0_g32430 = ( (appendResult88_g32430*2.0 + -1.0) * _SecondNormalValue );
				float3 appendResult91_g32430 = (float3(temp_output_90_0_g32430 , 1.0));
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float3 staticSwitch3450_g32109 = appendResult91_g32315;
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float3 staticSwitch3450_g32109 = appendResult91_g32430;
				#else
				float3 staticSwitch3450_g32109 = appendResult91_g32315;
				#endif
				half3 Second_Normal179_g32109 = staticSwitch3450_g32109;
				float3 lerpResult230_g32109 = lerp( float3( 0,0,1 ) , Second_Normal179_g32109 , Mask_Detail147_g32109);
				float3 lerpResult3372_g32109 = lerp( float3( 0,0,1 ) , Main_Normal137_g32109 , _DetailNormalValue);
				float3 lerpResult3376_g32109 = lerp( Main_Normal137_g32109 , BlendNormal( lerpResult3372_g32109 , Second_Normal179_g32109 ) , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float3 staticSwitch267_g32109 = Main_Normal137_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float3 staticSwitch267_g32109 = BlendNormal( Main_Normal137_g32109 , lerpResult230_g32109 );
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float3 staticSwitch267_g32109 = lerpResult3376_g32109;
				#else
				float3 staticSwitch267_g32109 = Main_Normal137_g32109;
				#endif
				half3 Blend_NormalRaw1051_g32109 = staticSwitch267_g32109;
				float3 switchResult1063_g32109 = (((isFrontFace>0)?(Blend_NormalRaw1051_g32109):(( Blend_NormalRaw1051_g32109 * float3(-1,-1,-1) ))));
				half Overlay_Contrast1405_g32109 = _OverlayContrastValue;
				float3 appendResult1439_g32109 = (float3(Overlay_Contrast1405_g32109 , Overlay_Contrast1405_g32109 , 1.0));
				float3 ase_worldBitangent = packedInput.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( tangentWS.xyz.x, ase_worldBitangent.x, normalWS.x );
				float3 tanToWorld1 = float3( tangentWS.xyz.y, ase_worldBitangent.y, normalWS.y );
				float3 tanToWorld2 = float3( tangentWS.xyz.z, ase_worldBitangent.z, normalWS.z );
				float3 tanNormal178_g32109 = ( switchResult1063_g32109 * appendResult1439_g32109 );
				float3 worldNormal178_g32109 = float3(dot(tanToWorld0,tanNormal178_g32109), dot(tanToWorld1,tanNormal178_g32109), dot(tanToWorld2,tanNormal178_g32109));
				half Global_OverlayIntensity154_g32109 = TVE_OverlayIntensity;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32355 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32358 = localObjectPosition_UNITY_MATRIX_M14_g32355;
				float4 transform68_g32355 = mul(GetObjectToWorldMatrix(),packedInput.ase_texcoord7);
				transform68_g32355.xyz = GetAbsolutePositionWS((transform68_g32355).xyz);
				float3 appendResult95_g32355 = (float3(packedInput.ase_texcoord5.z , 0.0 , packedInput.ase_texcoord5.w));
				float4 transform62_g32355 = mul(GetObjectToWorldMatrix(),float4( ( packedInput.ase_texcoord7.xyz - ( appendResult95_g32355 * _vertex_pivot_mode ) ) , 0.0 ));
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
				half Global_ExtrasTex_B156_g32109 = break49_g32352.z;
				float temp_output_1025_0_g32109 = ( Global_OverlayIntensity154_g32109 * _GlobalOverlay * Global_ExtrasTex_B156_g32109 );
				half Overlay_Commons1365_g32109 = temp_output_1025_0_g32109;
				half Overlay_Mask269_g32109 = saturate( ( saturate( worldNormal178_g32109.y ) - ( 1.0 - Overlay_Commons1365_g32109 ) ) );
				float3 lerpResult336_g32109 = lerp( Blend_AlbedoAndSubsurface149_g32109 , Global_OverlayColor1758_g32109 , Overlay_Mask269_g32109);
				half3 Final_Albedo359_g32109 = lerpResult336_g32109;
				half Main_Alpha316_g32109 = (temp_output_51_0_g32109).a;
				float lerpResult354_g32109 = lerp( 1.0 , Main_Alpha316_g32109 , _render_premul);
				half Final_Premultiply355_g32109 = lerpResult354_g32109;
				float3 temp_output_410_0_g32109 = ( Final_Albedo359_g32109 * Final_Premultiply355_g32109 );
				
				float3 temp_output_13_0_g32320 = staticSwitch267_g32109;
				float3 switchResult12_g32320 = (((isFrontFace>0)?(temp_output_13_0_g32320):(( temp_output_13_0_g32320 * _render_normals_options ))));
				half3 Blend_Normal312_g32109 = switchResult12_g32320;
				half3 Final_Normal366_g32109 = Blend_Normal312_g32109;
				
				half Main_Metallic237_g32109 = ( tex2DNode35_g32109.r * _MainMetallicValue );
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float staticSwitch3451_g32109 = ( tex2DNode33_g32109.r * _SecondMetallicValue );
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float staticSwitch3451_g32109 = 0.0;
				#else
				float staticSwitch3451_g32109 = ( tex2DNode33_g32109.r * _SecondMetallicValue );
				#endif
				half Second_Metallic226_g32109 = staticSwitch3451_g32109;
				float lerpResult278_g32109 = lerp( Main_Metallic237_g32109 , Second_Metallic226_g32109 , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch299_g32109 = Main_Metallic237_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float staticSwitch299_g32109 = Main_Metallic237_g32109;
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float staticSwitch299_g32109 = lerpResult278_g32109;
				#else
				float staticSwitch299_g32109 = Main_Metallic237_g32109;
				#endif
				half Blend_Metallic306_g32109 = staticSwitch299_g32109;
				float lerpResult342_g32109 = lerp( Blend_Metallic306_g32109 , 0.0 , Overlay_Mask269_g32109);
				half Final_Metallic367_g32109 = lerpResult342_g32109;
				
				half Main_Smoothness227_g32109 = ( tex2DNode35_g32109.a * _MainSmoothnessValue );
				half Packed_Smoothness3388_g32109 = tex2DNode3380_g32109.b;
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float staticSwitch3456_g32109 = tex2DNode33_g32109.a;
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float staticSwitch3456_g32109 = Packed_Smoothness3388_g32109;
				#else
				float staticSwitch3456_g32109 = tex2DNode33_g32109.a;
				#endif
				half Second_Smoothness236_g32109 = ( staticSwitch3456_g32109 * _SecondSmoothnessValue );
				float lerpResult266_g32109 = lerp( Main_Smoothness227_g32109 , Second_Smoothness236_g32109 , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch297_g32109 = Main_Smoothness227_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float staticSwitch297_g32109 = Main_Smoothness227_g32109;
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float staticSwitch297_g32109 = lerpResult266_g32109;
				#else
				float staticSwitch297_g32109 = Main_Smoothness227_g32109;
				#endif
				half Blend_Smoothness314_g32109 = staticSwitch297_g32109;
				half Global_OverlaySmoothness311_g32109 = TVE_OverlaySmoothness;
				float lerpResult343_g32109 = lerp( Blend_Smoothness314_g32109 , Global_OverlaySmoothness311_g32109 , Overlay_Mask269_g32109);
				half Final_Smoothness371_g32109 = lerpResult343_g32109;
				half Global_Wetness1016_g32109 = ( TVE_Wetness * _GlobalWetness );
				half Global_ExtrasTex_A1033_g32109 = break49_g32352.w;
				float lerpResult1037_g32109 = lerp( Final_Smoothness371_g32109 , saturate( ( Final_Smoothness371_g32109 + Global_Wetness1016_g32109 ) ) , Global_ExtrasTex_A1033_g32109);
				
				float lerpResult240_g32109 = lerp( 1.0 , tex2DNode35_g32109.g , _MainOcclusionValue);
				half Main_Occlusion247_g32109 = lerpResult240_g32109;
				float lerpResult239_g32109 = lerp( 1.0 , tex2DNode33_g32109.g , _SecondOcclusionValue);
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float staticSwitch3455_g32109 = lerpResult239_g32109;
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float staticSwitch3455_g32109 = 1.0;
				#else
				float staticSwitch3455_g32109 = lerpResult239_g32109;
				#endif
				half Second_Occlusion251_g32109 = staticSwitch3455_g32109;
				float lerpResult294_g32109 = lerp( Main_Occlusion247_g32109 , Second_Occlusion251_g32109 , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch310_g32109 = Main_Occlusion247_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float staticSwitch310_g32109 = ( Main_Occlusion247_g32109 * Second_Occlusion251_g32109 );
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float staticSwitch310_g32109 = lerpResult294_g32109;
				#else
				float staticSwitch310_g32109 = Main_Occlusion247_g32109;
				#endif
				half Blend_Occlusion323_g32109 = staticSwitch310_g32109;
				
				float localCustomAlphaClip9_g32414 = ( 0.0 );
				half Main_AlphaRaw1203_g32109 = tex2DNode29_g32109.a;
				half Alpha5_g32414 = Main_AlphaRaw1203_g32109;
				float Alpha9_g32414 = Alpha5_g32414;
				#if _ALPHATEST_ON
				clip(Alpha9_g32414 - _Cutoff);
				#endif
				half Final_Clip914_g32109 = localCustomAlphaClip9_g32414;
				
				surfaceDescription.Albedo = temp_output_410_0_g32109;
				surfaceDescription.Normal = Final_Normal366_g32109;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = Final_Metallic367_g32109;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = lerpResult1037_g32109;
				surfaceDescription.Occlusion = Blend_Occlusion323_g32109;
				surfaceDescription.Alpha = Main_Alpha316_g32109;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = Final_Clip914_g32109;
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

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_VFACE
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_POSITION
			#pragma shader_feature_local TVE_DETAIL_MODE_OFF TVE_DETAIL_MODE_OVERLAY TVE_DETAIL_MODE_REPLACE
			#pragma shader_feature_local TVE_DETAIL_MAPS_STANDARD TVE_DETAIL_MAPS_PACKED
			#pragma shader_feature_local TVE_DETAIL_TYPE_VERTEX_BLUE TVE_DETAIL_TYPE_PROJECTION
			  
			//SHADER INJECTION POINT BEGIN
           //Vegetation Studio (Instanced Indirect)
           #include "Assets/BOXOPHOBIC/The Vegetation Engine/Core/Library/VS_IndirectHD.cginc"
           #pragma instancing_options procedural:setupVSPro forwardadd
           #pragma multi_compile GPU_FRUSTUM_ON __
			//SHADER INJECTION POINT END
			    
			#define TVE_IS_OBJECT_SHADER
			#define TVE_VERTEX_DATA_BATCHED


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
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			CBUFFER_START( UnityPerMaterial )
			float4 _MaxBoundsInfo;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _SecondColor;
			half4 _SecondUVs;
			float4 _SubsurfaceDiffusion_asset;
			float4 _Color;
			half3 _render_normals_options;
			half _Banner;
			half _IsPropShader;
			half _IsAnyPathShader;
			half _BatchingMessage;
			float _MotionVariation_32;
			half _DetailMapsMode;
			half _DetailTypeMode;
			half _GlobalCat;
			half _ObjectDataMessage;
			half _DetailCat;
			half _AdvancedCat;
			float _MotionScale_20;
			half _MainCat;
			float _MotionVariation_30;
			half _RenderMode;
			half _MotionAmplitude_20;
			half _MotionVariation_10;
			half _render_dst;
			half _IsLitShader;
			half _render_src;
			half _render_cull;
			half _GlobalWetness;
			half _SecondSmoothnessValue;
			half _MainSmoothnessValue;
			half _SecondMetallicValue;
			half _MainMetallicValue;
			half _render_premul;
			half _vertex_pivot_mode;
			half _GlobalOverlay;
			half _OverlayContrastValue;
			half _DetailNormalValue;
			half _SecondNormalValue;
			half _DetailMaskContrast;
			half _DetailMaskValue;
			half _DetailMaskMode;
			half _DetailProjectionMode;
			half _DetailMeshValue;
			half _DetailCoordMode;
			half _render_zw;
			half _WorldDataMessage;
			half _render_cutoff;
			float _MotionSpeed_10;
			half _RenderPriority;
			half _MainOcclusionValue;
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
			half _IsStandardShader;
			half _MotionAmplitude_30;
			half _InteractionVariation;
			float _MotionScale_32;
			half _IsTVEShader;
			half _RenderBlend;
			half _RenderZWrite;
			half _MotionAmplitude_32;
			half _RenderCull;
			float _MotionSpeed_30;
			half _PivotsMessage;
			half _MotionAmplitude_10;
			float _MotionScale_10;
			float _MotionSpeed_20;
			half _DetailMode;
			half _RenderClip;
			float _MotionSpeed_32;
			float _MotionScale_30;
			half _RenderNormals;
			half _MainNormalValue;
			half _IsVersion;
			half _RenderingCat;
			half _VertexVariationMode;
			half _MotionVariation_20;
			half _Cutoff;
			half _InteractionAmplitude;
			half _SecondOcclusionValue;
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
			sampler2D _MainAlbedoTex;
			sampler2D _SecondAlbedoTex;
			sampler2D _SecondPackedTex;
			SAMPLER(sampler_SecondPackedTex);
			sampler2D _MainMaskTex;
			SAMPLER(sampler_MainMaskTex);
			sampler2D _SecondMaskTex;
			SAMPLER(sampler_SecondMaskTex);
			half4 TVE_OverlayColor;
			sampler2D _MainNormalTex;
			SAMPLER(sampler_MainNormalTex);
			sampler2D _SecondNormalTex;
			SAMPLER(sampler_SecondNormalTex);
			half TVE_OverlayIntensity;
			sampler2D TVE_ExtrasTex;
			half4 TVE_VolumeCoord;
			sampler2D TVE_ExtrasTex_Vegetation;
			sampler2D TVE_ExtrasTex_Grass;
			sampler2D TVE_ExtrasTex_Objects;
			sampler2D TVE_ExtrasTex_User;
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

				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				outputPackedVaryingsMeshToPS.ase_texcoord2.xyz = ase_worldPos;
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				outputPackedVaryingsMeshToPS.ase_texcoord3.xyz = ase_worldNormal;
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.tangentOS.xyz);
				outputPackedVaryingsMeshToPS.ase_texcoord4.xyz = ase_worldTangent;
				float ase_vertexTangentSign = inputMesh.tangentOS.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord5.xyz = ase_worldBitangent;
				
				outputPackedVaryingsMeshToPS.ase_texcoord = inputMesh.uv0;
				outputPackedVaryingsMeshToPS.ase_texcoord1.xy = inputMesh.uv1.xy;
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;
				outputPackedVaryingsMeshToPS.ase_texcoord6 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord1.zw = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord2.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord3.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord4.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord5.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

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
				half2 Main_UVs15_g32109 = ( ( packedInput.ase_texcoord.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g32109 = tex2D( _MainAlbedoTex, Main_UVs15_g32109 );
				float4 temp_output_51_0_g32109 = ( _MainColor * tex2DNode29_g32109 );
				half3 Main_AlbedoRaw99_g32109 = (temp_output_51_0_g32109).rgb;
				half3 Main_AlbedoTinted2808_g32109 = ( float3(1,1,1) * float3(1,1,1) * Main_AlbedoRaw99_g32109 * float3(1,1,1) );
				half3 Main_AlbedoColored863_g32109 = Main_AlbedoTinted2808_g32109;
				float2 lerpResult1545_g32109 = lerp( packedInput.ase_texcoord.xy , packedInput.ase_texcoord1.xy , _DetailCoordMode);
				float3 ase_worldPos = packedInput.ase_texcoord2.xyz;
				#if defined(TVE_DETAIL_TYPE_VERTEX_BLUE)
				float2 staticSwitch3466_g32109 = lerpResult1545_g32109;
				#elif defined(TVE_DETAIL_TYPE_PROJECTION)
				float2 staticSwitch3466_g32109 = (ase_worldPos).xz;
				#else
				float2 staticSwitch3466_g32109 = lerpResult1545_g32109;
				#endif
				half2 Second_UVs17_g32109 = ( ( staticSwitch3466_g32109 * (_SecondUVs).xy ) + (_SecondUVs).zw );
				float4 tex2DNode3380_g32109 = tex2D( _SecondPackedTex, Second_UVs17_g32109 );
				half Packed_Albedo3385_g32109 = tex2DNode3380_g32109.r;
				float4 temp_cast_0 = (Packed_Albedo3385_g32109).xxxx;
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float4 staticSwitch3449_g32109 = tex2D( _SecondAlbedoTex, Second_UVs17_g32109 );
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float4 staticSwitch3449_g32109 = temp_cast_0;
				#else
				float4 staticSwitch3449_g32109 = tex2D( _SecondAlbedoTex, Second_UVs17_g32109 );
				#endif
				half3 Second_Albedo153_g32109 = (( _SecondColor * staticSwitch3449_g32109 )).rgb;
				half3 Second_AlbedoColored1963_g32109 = Second_Albedo153_g32109;
				half Mesh_DetailMask90_g32109 = packedInput.ase_color.b;
				float temp_output_989_0_g32109 = ( ( Mesh_DetailMask90_g32109 - 0.5 ) + _DetailMeshValue );
				float3 ase_worldNormal = packedInput.ase_texcoord3.xyz;
				float3 lerpResult1537_g32109 = lerp( float3(0,1,0) , float3(0,-1,0) , _DetailProjectionMode);
				float dotResult1532_g32109 = dot( ase_worldNormal , lerpResult1537_g32109 );
				#if defined(TVE_DETAIL_TYPE_VERTEX_BLUE)
				float staticSwitch3467_g32109 = temp_output_989_0_g32109;
				#elif defined(TVE_DETAIL_TYPE_PROJECTION)
				float staticSwitch3467_g32109 = ( ( dotResult1532_g32109 * 0.5 ) + _DetailMeshValue );
				#else
				float staticSwitch3467_g32109 = temp_output_989_0_g32109;
				#endif
				half Blend_Source1540_g32109 = staticSwitch3467_g32109;
				float4 tex2DNode35_g32109 = tex2D( _MainMaskTex, Main_UVs15_g32109 );
				half Main_Mask_Raw57_g32109 = tex2DNode35_g32109.b;
				float4 tex2DNode33_g32109 = tex2D( _SecondMaskTex, Second_UVs17_g32109 );
				half Second_Mask81_g32109 = tex2DNode33_g32109.b;
				float lerpResult1327_g32109 = lerp( Main_Mask_Raw57_g32109 , Second_Mask81_g32109 , _DetailMaskMode);
				float temp_output_7_0_g32425 = _DetailMaskContrast;
				float temp_output_973_0_g32109 = saturate( ( ( saturate( ( Blend_Source1540_g32109 + ( Blend_Source1540_g32109 * ( ( ( 1.0 - lerpResult1327_g32109 ) - 0.5 ) + _DetailMaskValue ) ) ) ) - temp_output_7_0_g32425 ) / ( ( 1.0 - _DetailMaskContrast ) - temp_output_7_0_g32425 ) ) );
				half Mask_Detail147_g32109 = temp_output_973_0_g32109;
				float3 lerpResult235_g32109 = lerp( Main_AlbedoColored863_g32109 , ( Main_AlbedoColored863_g32109 * Second_AlbedoColored1963_g32109 * 4.594794 ) , Mask_Detail147_g32109);
				float3 lerpResult208_g32109 = lerp( Main_AlbedoColored863_g32109 , Second_AlbedoColored1963_g32109 , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float3 staticSwitch255_g32109 = Main_AlbedoColored863_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float3 staticSwitch255_g32109 = lerpResult235_g32109;
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float3 staticSwitch255_g32109 = lerpResult208_g32109;
				#else
				float3 staticSwitch255_g32109 = Main_AlbedoColored863_g32109;
				#endif
				half3 Blend_Albedo265_g32109 = staticSwitch255_g32109;
				half3 Blend_AlbedoAndSubsurface149_g32109 = Blend_Albedo265_g32109;
				half3 Global_OverlayColor1758_g32109 = (TVE_OverlayColor).rgb;
				float4 tex2DNode117_g32109 = tex2D( _MainNormalTex, Main_UVs15_g32109 );
				float2 appendResult88_g32418 = (float2(tex2DNode117_g32109.a , tex2DNode117_g32109.g));
				float2 temp_output_90_0_g32418 = ( (appendResult88_g32418*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult91_g32418 = (float3(temp_output_90_0_g32418 , 1.0));
				half3 Main_Normal137_g32109 = appendResult91_g32418;
				float4 tex2DNode145_g32109 = tex2D( _SecondNormalTex, Second_UVs17_g32109 );
				float2 appendResult88_g32315 = (float2(tex2DNode145_g32109.a , tex2DNode145_g32109.g));
				float2 temp_output_90_0_g32315 = ( (appendResult88_g32315*2.0 + -1.0) * _SecondNormalValue );
				float3 appendResult91_g32315 = (float3(temp_output_90_0_g32315 , 1.0));
				half Packed_NormalX3387_g32109 = tex2DNode3380_g32109.a;
				half Packed_NormalY3386_g32109 = tex2DNode3380_g32109.g;
				float2 appendResult88_g32430 = (float2(Packed_NormalX3387_g32109 , Packed_NormalY3386_g32109));
				float2 temp_output_90_0_g32430 = ( (appendResult88_g32430*2.0 + -1.0) * _SecondNormalValue );
				float3 appendResult91_g32430 = (float3(temp_output_90_0_g32430 , 1.0));
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float3 staticSwitch3450_g32109 = appendResult91_g32315;
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float3 staticSwitch3450_g32109 = appendResult91_g32430;
				#else
				float3 staticSwitch3450_g32109 = appendResult91_g32315;
				#endif
				half3 Second_Normal179_g32109 = staticSwitch3450_g32109;
				float3 lerpResult230_g32109 = lerp( float3( 0,0,1 ) , Second_Normal179_g32109 , Mask_Detail147_g32109);
				float3 lerpResult3372_g32109 = lerp( float3( 0,0,1 ) , Main_Normal137_g32109 , _DetailNormalValue);
				float3 lerpResult3376_g32109 = lerp( Main_Normal137_g32109 , BlendNormal( lerpResult3372_g32109 , Second_Normal179_g32109 ) , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float3 staticSwitch267_g32109 = Main_Normal137_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float3 staticSwitch267_g32109 = BlendNormal( Main_Normal137_g32109 , lerpResult230_g32109 );
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float3 staticSwitch267_g32109 = lerpResult3376_g32109;
				#else
				float3 staticSwitch267_g32109 = Main_Normal137_g32109;
				#endif
				half3 Blend_NormalRaw1051_g32109 = staticSwitch267_g32109;
				float3 switchResult1063_g32109 = (((isFrontFace>0)?(Blend_NormalRaw1051_g32109):(( Blend_NormalRaw1051_g32109 * float3(-1,-1,-1) ))));
				half Overlay_Contrast1405_g32109 = _OverlayContrastValue;
				float3 appendResult1439_g32109 = (float3(Overlay_Contrast1405_g32109 , Overlay_Contrast1405_g32109 , 1.0));
				float3 ase_worldTangent = packedInput.ase_texcoord4.xyz;
				float3 ase_worldBitangent = packedInput.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal178_g32109 = ( switchResult1063_g32109 * appendResult1439_g32109 );
				float3 worldNormal178_g32109 = float3(dot(tanToWorld0,tanNormal178_g32109), dot(tanToWorld1,tanNormal178_g32109), dot(tanToWorld2,tanNormal178_g32109));
				half Global_OverlayIntensity154_g32109 = TVE_OverlayIntensity;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32355 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32358 = localObjectPosition_UNITY_MATRIX_M14_g32355;
				float4 transform68_g32355 = mul(GetObjectToWorldMatrix(),packedInput.ase_texcoord6);
				transform68_g32355.xyz = GetAbsolutePositionWS((transform68_g32355).xyz);
				float3 appendResult95_g32355 = (float3(packedInput.ase_texcoord.z , 0.0 , packedInput.ase_texcoord.w));
				float4 transform62_g32355 = mul(GetObjectToWorldMatrix(),float4( ( packedInput.ase_texcoord6.xyz - ( appendResult95_g32355 * _vertex_pivot_mode ) ) , 0.0 ));
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
				half Global_ExtrasTex_B156_g32109 = break49_g32352.z;
				float temp_output_1025_0_g32109 = ( Global_OverlayIntensity154_g32109 * _GlobalOverlay * Global_ExtrasTex_B156_g32109 );
				half Overlay_Commons1365_g32109 = temp_output_1025_0_g32109;
				half Overlay_Mask269_g32109 = saturate( ( saturate( worldNormal178_g32109.y ) - ( 1.0 - Overlay_Commons1365_g32109 ) ) );
				float3 lerpResult336_g32109 = lerp( Blend_AlbedoAndSubsurface149_g32109 , Global_OverlayColor1758_g32109 , Overlay_Mask269_g32109);
				half3 Final_Albedo359_g32109 = lerpResult336_g32109;
				half Main_Alpha316_g32109 = (temp_output_51_0_g32109).a;
				float lerpResult354_g32109 = lerp( 1.0 , Main_Alpha316_g32109 , _render_premul);
				half Final_Premultiply355_g32109 = lerpResult354_g32109;
				float3 temp_output_410_0_g32109 = ( Final_Albedo359_g32109 * Final_Premultiply355_g32109 );
				
				float3 temp_output_13_0_g32320 = staticSwitch267_g32109;
				float3 switchResult12_g32320 = (((isFrontFace>0)?(temp_output_13_0_g32320):(( temp_output_13_0_g32320 * _render_normals_options ))));
				half3 Blend_Normal312_g32109 = switchResult12_g32320;
				half3 Final_Normal366_g32109 = Blend_Normal312_g32109;
				
				half Main_Metallic237_g32109 = ( tex2DNode35_g32109.r * _MainMetallicValue );
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float staticSwitch3451_g32109 = ( tex2DNode33_g32109.r * _SecondMetallicValue );
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float staticSwitch3451_g32109 = 0.0;
				#else
				float staticSwitch3451_g32109 = ( tex2DNode33_g32109.r * _SecondMetallicValue );
				#endif
				half Second_Metallic226_g32109 = staticSwitch3451_g32109;
				float lerpResult278_g32109 = lerp( Main_Metallic237_g32109 , Second_Metallic226_g32109 , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch299_g32109 = Main_Metallic237_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float staticSwitch299_g32109 = Main_Metallic237_g32109;
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float staticSwitch299_g32109 = lerpResult278_g32109;
				#else
				float staticSwitch299_g32109 = Main_Metallic237_g32109;
				#endif
				half Blend_Metallic306_g32109 = staticSwitch299_g32109;
				float lerpResult342_g32109 = lerp( Blend_Metallic306_g32109 , 0.0 , Overlay_Mask269_g32109);
				half Final_Metallic367_g32109 = lerpResult342_g32109;
				
				half Main_Smoothness227_g32109 = ( tex2DNode35_g32109.a * _MainSmoothnessValue );
				half Packed_Smoothness3388_g32109 = tex2DNode3380_g32109.b;
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float staticSwitch3456_g32109 = tex2DNode33_g32109.a;
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float staticSwitch3456_g32109 = Packed_Smoothness3388_g32109;
				#else
				float staticSwitch3456_g32109 = tex2DNode33_g32109.a;
				#endif
				half Second_Smoothness236_g32109 = ( staticSwitch3456_g32109 * _SecondSmoothnessValue );
				float lerpResult266_g32109 = lerp( Main_Smoothness227_g32109 , Second_Smoothness236_g32109 , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch297_g32109 = Main_Smoothness227_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float staticSwitch297_g32109 = Main_Smoothness227_g32109;
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float staticSwitch297_g32109 = lerpResult266_g32109;
				#else
				float staticSwitch297_g32109 = Main_Smoothness227_g32109;
				#endif
				half Blend_Smoothness314_g32109 = staticSwitch297_g32109;
				half Global_OverlaySmoothness311_g32109 = TVE_OverlaySmoothness;
				float lerpResult343_g32109 = lerp( Blend_Smoothness314_g32109 , Global_OverlaySmoothness311_g32109 , Overlay_Mask269_g32109);
				half Final_Smoothness371_g32109 = lerpResult343_g32109;
				half Global_Wetness1016_g32109 = ( TVE_Wetness * _GlobalWetness );
				half Global_ExtrasTex_A1033_g32109 = break49_g32352.w;
				float lerpResult1037_g32109 = lerp( Final_Smoothness371_g32109 , saturate( ( Final_Smoothness371_g32109 + Global_Wetness1016_g32109 ) ) , Global_ExtrasTex_A1033_g32109);
				
				float lerpResult240_g32109 = lerp( 1.0 , tex2DNode35_g32109.g , _MainOcclusionValue);
				half Main_Occlusion247_g32109 = lerpResult240_g32109;
				float lerpResult239_g32109 = lerp( 1.0 , tex2DNode33_g32109.g , _SecondOcclusionValue);
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float staticSwitch3455_g32109 = lerpResult239_g32109;
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float staticSwitch3455_g32109 = 1.0;
				#else
				float staticSwitch3455_g32109 = lerpResult239_g32109;
				#endif
				half Second_Occlusion251_g32109 = staticSwitch3455_g32109;
				float lerpResult294_g32109 = lerp( Main_Occlusion247_g32109 , Second_Occlusion251_g32109 , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch310_g32109 = Main_Occlusion247_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float staticSwitch310_g32109 = ( Main_Occlusion247_g32109 * Second_Occlusion251_g32109 );
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float staticSwitch310_g32109 = lerpResult294_g32109;
				#else
				float staticSwitch310_g32109 = Main_Occlusion247_g32109;
				#endif
				half Blend_Occlusion323_g32109 = staticSwitch310_g32109;
				
				float localCustomAlphaClip9_g32414 = ( 0.0 );
				half Main_AlphaRaw1203_g32109 = tex2DNode29_g32109.a;
				half Alpha5_g32414 = Main_AlphaRaw1203_g32109;
				float Alpha9_g32414 = Alpha5_g32414;
				#if _ALPHATEST_ON
				clip(Alpha9_g32414 - _Cutoff);
				#endif
				half Final_Clip914_g32109 = localCustomAlphaClip9_g32414;
				
				surfaceDescription.Albedo = temp_output_410_0_g32109;
				surfaceDescription.Normal = Final_Normal366_g32109;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = Final_Metallic367_g32109;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = lerpResult1037_g32109;
				surfaceDescription.Occlusion = Blend_Occlusion323_g32109;
				surfaceDescription.Alpha = Main_Alpha316_g32109;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = Final_Clip914_g32109;
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

			  
			//SHADER INJECTION POINT BEGIN
           //Vegetation Studio (Instanced Indirect)
           #include "Assets/BOXOPHOBIC/The Vegetation Engine/Core/Library/VS_IndirectHD.cginc"
           #pragma instancing_options procedural:setupVSPro forwardadd
           #pragma multi_compile GPU_FRUSTUM_ON __
			//SHADER INJECTION POINT END
			    
			#define TVE_IS_OBJECT_SHADER
			#define TVE_VERTEX_DATA_BATCHED


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			CBUFFER_START( UnityPerMaterial )
			float4 _MaxBoundsInfo;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _SecondColor;
			half4 _SecondUVs;
			float4 _SubsurfaceDiffusion_asset;
			float4 _Color;
			half3 _render_normals_options;
			half _Banner;
			half _IsPropShader;
			half _IsAnyPathShader;
			half _BatchingMessage;
			float _MotionVariation_32;
			half _DetailMapsMode;
			half _DetailTypeMode;
			half _GlobalCat;
			half _ObjectDataMessage;
			half _DetailCat;
			half _AdvancedCat;
			float _MotionScale_20;
			half _MainCat;
			float _MotionVariation_30;
			half _RenderMode;
			half _MotionAmplitude_20;
			half _MotionVariation_10;
			half _render_dst;
			half _IsLitShader;
			half _render_src;
			half _render_cull;
			half _GlobalWetness;
			half _SecondSmoothnessValue;
			half _MainSmoothnessValue;
			half _SecondMetallicValue;
			half _MainMetallicValue;
			half _render_premul;
			half _vertex_pivot_mode;
			half _GlobalOverlay;
			half _OverlayContrastValue;
			half _DetailNormalValue;
			half _SecondNormalValue;
			half _DetailMaskContrast;
			half _DetailMaskValue;
			half _DetailMaskMode;
			half _DetailProjectionMode;
			half _DetailMeshValue;
			half _DetailCoordMode;
			half _render_zw;
			half _WorldDataMessage;
			half _render_cutoff;
			float _MotionSpeed_10;
			half _RenderPriority;
			half _MainOcclusionValue;
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
			half _IsStandardShader;
			half _MotionAmplitude_30;
			half _InteractionVariation;
			float _MotionScale_32;
			half _IsTVEShader;
			half _RenderBlend;
			half _RenderZWrite;
			half _MotionAmplitude_32;
			half _RenderCull;
			float _MotionSpeed_30;
			half _PivotsMessage;
			half _MotionAmplitude_10;
			float _MotionScale_10;
			float _MotionSpeed_20;
			half _DetailMode;
			half _RenderClip;
			float _MotionSpeed_32;
			float _MotionScale_30;
			half _RenderNormals;
			half _MainNormalValue;
			half _IsVersion;
			half _RenderingCat;
			half _VertexVariationMode;
			half _MotionVariation_20;
			half _Cutoff;
			half _InteractionAmplitude;
			half _SecondOcclusionValue;
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
			sampler2D _MainAlbedoTex;
			SAMPLER(sampler_MainAlbedoTex);


			
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

				outputPackedVaryingsMeshToPS.ase_texcoord1 = inputMesh.ase_texcoord;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

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
				half2 Main_UVs15_g32109 = ( ( packedInput.ase_texcoord1.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g32109 = tex2D( _MainAlbedoTex, Main_UVs15_g32109 );
				float4 temp_output_51_0_g32109 = ( _MainColor * tex2DNode29_g32109 );
				half Main_Alpha316_g32109 = (temp_output_51_0_g32109).a;
				
				float localCustomAlphaClip9_g32414 = ( 0.0 );
				half Main_AlphaRaw1203_g32109 = tex2DNode29_g32109.a;
				half Alpha5_g32414 = Main_AlphaRaw1203_g32109;
				float Alpha9_g32414 = Alpha5_g32414;
				#if _ALPHATEST_ON
				clip(Alpha9_g32414 - _Cutoff);
				#endif
				half Final_Clip914_g32109 = localCustomAlphaClip9_g32414;
				
				surfaceDescription.Alpha = Main_Alpha316_g32109;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = Final_Clip914_g32109;
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

			  
			//SHADER INJECTION POINT BEGIN
           //Vegetation Studio (Instanced Indirect)
           #include "Assets/BOXOPHOBIC/The Vegetation Engine/Core/Library/VS_IndirectHD.cginc"
           #pragma instancing_options procedural:setupVSPro forwardadd
           #pragma multi_compile GPU_FRUSTUM_ON __
			//SHADER INJECTION POINT END
			    
			#define TVE_IS_OBJECT_SHADER
			#define TVE_VERTEX_DATA_BATCHED


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			int _ObjectId;
			int _PassValue;

			CBUFFER_START( UnityPerMaterial )
			float4 _MaxBoundsInfo;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _SecondColor;
			half4 _SecondUVs;
			float4 _SubsurfaceDiffusion_asset;
			float4 _Color;
			half3 _render_normals_options;
			half _Banner;
			half _IsPropShader;
			half _IsAnyPathShader;
			half _BatchingMessage;
			float _MotionVariation_32;
			half _DetailMapsMode;
			half _DetailTypeMode;
			half _GlobalCat;
			half _ObjectDataMessage;
			half _DetailCat;
			half _AdvancedCat;
			float _MotionScale_20;
			half _MainCat;
			float _MotionVariation_30;
			half _RenderMode;
			half _MotionAmplitude_20;
			half _MotionVariation_10;
			half _render_dst;
			half _IsLitShader;
			half _render_src;
			half _render_cull;
			half _GlobalWetness;
			half _SecondSmoothnessValue;
			half _MainSmoothnessValue;
			half _SecondMetallicValue;
			half _MainMetallicValue;
			half _render_premul;
			half _vertex_pivot_mode;
			half _GlobalOverlay;
			half _OverlayContrastValue;
			half _DetailNormalValue;
			half _SecondNormalValue;
			half _DetailMaskContrast;
			half _DetailMaskValue;
			half _DetailMaskMode;
			half _DetailProjectionMode;
			half _DetailMeshValue;
			half _DetailCoordMode;
			half _render_zw;
			half _WorldDataMessage;
			half _render_cutoff;
			float _MotionSpeed_10;
			half _RenderPriority;
			half _MainOcclusionValue;
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
			half _IsStandardShader;
			half _MotionAmplitude_30;
			half _InteractionVariation;
			float _MotionScale_32;
			half _IsTVEShader;
			half _RenderBlend;
			half _RenderZWrite;
			half _MotionAmplitude_32;
			half _RenderCull;
			float _MotionSpeed_30;
			half _PivotsMessage;
			half _MotionAmplitude_10;
			float _MotionScale_10;
			float _MotionSpeed_20;
			half _DetailMode;
			half _RenderClip;
			float _MotionSpeed_32;
			float _MotionScale_30;
			half _RenderNormals;
			half _MainNormalValue;
			half _IsVersion;
			half _RenderingCat;
			half _VertexVariationMode;
			half _MotionVariation_20;
			half _Cutoff;
			half _InteractionAmplitude;
			half _SecondOcclusionValue;
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
			sampler2D _MainAlbedoTex;
			SAMPLER(sampler_MainAlbedoTex);


			
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

				outputPackedVaryingsMeshToPS.ase_texcoord1 = inputMesh.ase_texcoord;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

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
				half2 Main_UVs15_g32109 = ( ( packedInput.ase_texcoord1.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g32109 = tex2D( _MainAlbedoTex, Main_UVs15_g32109 );
				float4 temp_output_51_0_g32109 = ( _MainColor * tex2DNode29_g32109 );
				half Main_Alpha316_g32109 = (temp_output_51_0_g32109).a;
				
				float localCustomAlphaClip9_g32414 = ( 0.0 );
				half Main_AlphaRaw1203_g32109 = tex2DNode29_g32109.a;
				half Alpha5_g32414 = Main_AlphaRaw1203_g32109;
				float Alpha9_g32414 = Alpha5_g32414;
				#if _ALPHATEST_ON
				clip(Alpha9_g32414 - _Cutoff);
				#endif
				half Final_Clip914_g32109 = localCustomAlphaClip9_g32414;
				
				surfaceDescription.Alpha = Main_Alpha316_g32109;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = Final_Clip914_g32109;
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

			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_VFACE
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_POSITION
			#pragma shader_feature_local TVE_DETAIL_MODE_OFF TVE_DETAIL_MODE_OVERLAY TVE_DETAIL_MODE_REPLACE
			#pragma shader_feature_local TVE_DETAIL_MAPS_STANDARD TVE_DETAIL_MAPS_PACKED
			#pragma shader_feature_local TVE_DETAIL_TYPE_VERTEX_BLUE TVE_DETAIL_TYPE_PROJECTION
			  
			//SHADER INJECTION POINT BEGIN
           //Vegetation Studio (Instanced Indirect)
           #include "Assets/BOXOPHOBIC/The Vegetation Engine/Core/Library/VS_IndirectHD.cginc"
           #pragma instancing_options procedural:setupVSPro forwardadd
           #pragma multi_compile GPU_FRUSTUM_ON __
			//SHADER INJECTION POINT END
			    
			#define TVE_IS_OBJECT_SHADER
			#define TVE_VERTEX_DATA_BATCHED


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
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
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_color : COLOR;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			CBUFFER_START( UnityPerMaterial )
			float4 _MaxBoundsInfo;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _SecondColor;
			half4 _SecondUVs;
			float4 _SubsurfaceDiffusion_asset;
			float4 _Color;
			half3 _render_normals_options;
			half _Banner;
			half _IsPropShader;
			half _IsAnyPathShader;
			half _BatchingMessage;
			float _MotionVariation_32;
			half _DetailMapsMode;
			half _DetailTypeMode;
			half _GlobalCat;
			half _ObjectDataMessage;
			half _DetailCat;
			half _AdvancedCat;
			float _MotionScale_20;
			half _MainCat;
			float _MotionVariation_30;
			half _RenderMode;
			half _MotionAmplitude_20;
			half _MotionVariation_10;
			half _render_dst;
			half _IsLitShader;
			half _render_src;
			half _render_cull;
			half _GlobalWetness;
			half _SecondSmoothnessValue;
			half _MainSmoothnessValue;
			half _SecondMetallicValue;
			half _MainMetallicValue;
			half _render_premul;
			half _vertex_pivot_mode;
			half _GlobalOverlay;
			half _OverlayContrastValue;
			half _DetailNormalValue;
			half _SecondNormalValue;
			half _DetailMaskContrast;
			half _DetailMaskValue;
			half _DetailMaskMode;
			half _DetailProjectionMode;
			half _DetailMeshValue;
			half _DetailCoordMode;
			half _render_zw;
			half _WorldDataMessage;
			half _render_cutoff;
			float _MotionSpeed_10;
			half _RenderPriority;
			half _MainOcclusionValue;
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
			half _IsStandardShader;
			half _MotionAmplitude_30;
			half _InteractionVariation;
			float _MotionScale_32;
			half _IsTVEShader;
			half _RenderBlend;
			half _RenderZWrite;
			half _MotionAmplitude_32;
			half _RenderCull;
			float _MotionSpeed_30;
			half _PivotsMessage;
			half _MotionAmplitude_10;
			float _MotionScale_10;
			float _MotionSpeed_20;
			half _DetailMode;
			half _RenderClip;
			float _MotionSpeed_32;
			float _MotionScale_30;
			half _RenderNormals;
			half _MainNormalValue;
			half _IsVersion;
			half _RenderingCat;
			half _VertexVariationMode;
			half _MotionVariation_20;
			half _Cutoff;
			half _InteractionAmplitude;
			half _SecondOcclusionValue;
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
			sampler2D _MainNormalTex;
			SAMPLER(sampler_MainNormalTex);
			sampler2D _SecondNormalTex;
			SAMPLER(sampler_SecondNormalTex);
			sampler2D _SecondPackedTex;
			SAMPLER(sampler_SecondPackedTex);
			sampler2D _MainMaskTex;
			SAMPLER(sampler_MainMaskTex);
			sampler2D _SecondMaskTex;
			SAMPLER(sampler_SecondMaskTex);
			half TVE_OverlaySmoothness;
			half TVE_OverlayIntensity;
			sampler2D TVE_ExtrasTex;
			half4 TVE_VolumeCoord;
			sampler2D TVE_ExtrasTex_Vegetation;
			sampler2D TVE_ExtrasTex_Grass;
			sampler2D TVE_ExtrasTex_Objects;
			sampler2D TVE_ExtrasTex_User;
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

				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.tangentOS.xyz);
				float ase_vertexTangentSign = inputMesh.tangentOS.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord5.xyz = ase_worldBitangent;
				
				outputPackedVaryingsMeshToPS.ase_texcoord3 = inputMesh.ase_texcoord;
				outputPackedVaryingsMeshToPS.ase_texcoord4.xy = inputMesh.ase_texcoord1.xy;
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;
				outputPackedVaryingsMeshToPS.ase_texcoord6 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord4.zw = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord5.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

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
				float4 ase_texcoord1 : TEXCOORD1;
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
				o.ase_texcoord1 = v.ase_texcoord1;
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
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
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
				half2 Main_UVs15_g32109 = ( ( packedInput.ase_texcoord3.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode117_g32109 = tex2D( _MainNormalTex, Main_UVs15_g32109 );
				float2 appendResult88_g32418 = (float2(tex2DNode117_g32109.a , tex2DNode117_g32109.g));
				float2 temp_output_90_0_g32418 = ( (appendResult88_g32418*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult91_g32418 = (float3(temp_output_90_0_g32418 , 1.0));
				half3 Main_Normal137_g32109 = appendResult91_g32418;
				float2 lerpResult1545_g32109 = lerp( packedInput.ase_texcoord3.xy , packedInput.ase_texcoord4.xy , _DetailCoordMode);
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				#if defined(TVE_DETAIL_TYPE_VERTEX_BLUE)
				float2 staticSwitch3466_g32109 = lerpResult1545_g32109;
				#elif defined(TVE_DETAIL_TYPE_PROJECTION)
				float2 staticSwitch3466_g32109 = (ase_worldPos).xz;
				#else
				float2 staticSwitch3466_g32109 = lerpResult1545_g32109;
				#endif
				half2 Second_UVs17_g32109 = ( ( staticSwitch3466_g32109 * (_SecondUVs).xy ) + (_SecondUVs).zw );
				float4 tex2DNode145_g32109 = tex2D( _SecondNormalTex, Second_UVs17_g32109 );
				float2 appendResult88_g32315 = (float2(tex2DNode145_g32109.a , tex2DNode145_g32109.g));
				float2 temp_output_90_0_g32315 = ( (appendResult88_g32315*2.0 + -1.0) * _SecondNormalValue );
				float3 appendResult91_g32315 = (float3(temp_output_90_0_g32315 , 1.0));
				float4 tex2DNode3380_g32109 = tex2D( _SecondPackedTex, Second_UVs17_g32109 );
				half Packed_NormalX3387_g32109 = tex2DNode3380_g32109.a;
				half Packed_NormalY3386_g32109 = tex2DNode3380_g32109.g;
				float2 appendResult88_g32430 = (float2(Packed_NormalX3387_g32109 , Packed_NormalY3386_g32109));
				float2 temp_output_90_0_g32430 = ( (appendResult88_g32430*2.0 + -1.0) * _SecondNormalValue );
				float3 appendResult91_g32430 = (float3(temp_output_90_0_g32430 , 1.0));
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float3 staticSwitch3450_g32109 = appendResult91_g32315;
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float3 staticSwitch3450_g32109 = appendResult91_g32430;
				#else
				float3 staticSwitch3450_g32109 = appendResult91_g32315;
				#endif
				half3 Second_Normal179_g32109 = staticSwitch3450_g32109;
				half Mesh_DetailMask90_g32109 = packedInput.ase_color.b;
				float temp_output_989_0_g32109 = ( ( Mesh_DetailMask90_g32109 - 0.5 ) + _DetailMeshValue );
				float3 lerpResult1537_g32109 = lerp( float3(0,1,0) , float3(0,-1,0) , _DetailProjectionMode);
				float dotResult1532_g32109 = dot( normalWS , lerpResult1537_g32109 );
				#if defined(TVE_DETAIL_TYPE_VERTEX_BLUE)
				float staticSwitch3467_g32109 = temp_output_989_0_g32109;
				#elif defined(TVE_DETAIL_TYPE_PROJECTION)
				float staticSwitch3467_g32109 = ( ( dotResult1532_g32109 * 0.5 ) + _DetailMeshValue );
				#else
				float staticSwitch3467_g32109 = temp_output_989_0_g32109;
				#endif
				half Blend_Source1540_g32109 = staticSwitch3467_g32109;
				float4 tex2DNode35_g32109 = tex2D( _MainMaskTex, Main_UVs15_g32109 );
				half Main_Mask_Raw57_g32109 = tex2DNode35_g32109.b;
				float4 tex2DNode33_g32109 = tex2D( _SecondMaskTex, Second_UVs17_g32109 );
				half Second_Mask81_g32109 = tex2DNode33_g32109.b;
				float lerpResult1327_g32109 = lerp( Main_Mask_Raw57_g32109 , Second_Mask81_g32109 , _DetailMaskMode);
				float temp_output_7_0_g32425 = _DetailMaskContrast;
				float temp_output_973_0_g32109 = saturate( ( ( saturate( ( Blend_Source1540_g32109 + ( Blend_Source1540_g32109 * ( ( ( 1.0 - lerpResult1327_g32109 ) - 0.5 ) + _DetailMaskValue ) ) ) ) - temp_output_7_0_g32425 ) / ( ( 1.0 - _DetailMaskContrast ) - temp_output_7_0_g32425 ) ) );
				half Mask_Detail147_g32109 = temp_output_973_0_g32109;
				float3 lerpResult230_g32109 = lerp( float3( 0,0,1 ) , Second_Normal179_g32109 , Mask_Detail147_g32109);
				float3 lerpResult3372_g32109 = lerp( float3( 0,0,1 ) , Main_Normal137_g32109 , _DetailNormalValue);
				float3 lerpResult3376_g32109 = lerp( Main_Normal137_g32109 , BlendNormal( lerpResult3372_g32109 , Second_Normal179_g32109 ) , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float3 staticSwitch267_g32109 = Main_Normal137_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float3 staticSwitch267_g32109 = BlendNormal( Main_Normal137_g32109 , lerpResult230_g32109 );
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float3 staticSwitch267_g32109 = lerpResult3376_g32109;
				#else
				float3 staticSwitch267_g32109 = Main_Normal137_g32109;
				#endif
				float3 temp_output_13_0_g32320 = staticSwitch267_g32109;
				float3 switchResult12_g32320 = (((isFrontFace>0)?(temp_output_13_0_g32320):(( temp_output_13_0_g32320 * _render_normals_options ))));
				half3 Blend_Normal312_g32109 = switchResult12_g32320;
				half3 Final_Normal366_g32109 = Blend_Normal312_g32109;
				
				half Main_Smoothness227_g32109 = ( tex2DNode35_g32109.a * _MainSmoothnessValue );
				half Packed_Smoothness3388_g32109 = tex2DNode3380_g32109.b;
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float staticSwitch3456_g32109 = tex2DNode33_g32109.a;
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float staticSwitch3456_g32109 = Packed_Smoothness3388_g32109;
				#else
				float staticSwitch3456_g32109 = tex2DNode33_g32109.a;
				#endif
				half Second_Smoothness236_g32109 = ( staticSwitch3456_g32109 * _SecondSmoothnessValue );
				float lerpResult266_g32109 = lerp( Main_Smoothness227_g32109 , Second_Smoothness236_g32109 , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch297_g32109 = Main_Smoothness227_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float staticSwitch297_g32109 = Main_Smoothness227_g32109;
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float staticSwitch297_g32109 = lerpResult266_g32109;
				#else
				float staticSwitch297_g32109 = Main_Smoothness227_g32109;
				#endif
				half Blend_Smoothness314_g32109 = staticSwitch297_g32109;
				half Global_OverlaySmoothness311_g32109 = TVE_OverlaySmoothness;
				half3 Blend_NormalRaw1051_g32109 = staticSwitch267_g32109;
				float3 switchResult1063_g32109 = (((isFrontFace>0)?(Blend_NormalRaw1051_g32109):(( Blend_NormalRaw1051_g32109 * float3(-1,-1,-1) ))));
				half Overlay_Contrast1405_g32109 = _OverlayContrastValue;
				float3 appendResult1439_g32109 = (float3(Overlay_Contrast1405_g32109 , Overlay_Contrast1405_g32109 , 1.0));
				float3 ase_worldBitangent = packedInput.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( tangentWS.xyz.x, ase_worldBitangent.x, normalWS.x );
				float3 tanToWorld1 = float3( tangentWS.xyz.y, ase_worldBitangent.y, normalWS.y );
				float3 tanToWorld2 = float3( tangentWS.xyz.z, ase_worldBitangent.z, normalWS.z );
				float3 tanNormal178_g32109 = ( switchResult1063_g32109 * appendResult1439_g32109 );
				float3 worldNormal178_g32109 = float3(dot(tanToWorld0,tanNormal178_g32109), dot(tanToWorld1,tanNormal178_g32109), dot(tanToWorld2,tanNormal178_g32109));
				half Global_OverlayIntensity154_g32109 = TVE_OverlayIntensity;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32355 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32358 = localObjectPosition_UNITY_MATRIX_M14_g32355;
				float4 transform68_g32355 = mul(GetObjectToWorldMatrix(),packedInput.ase_texcoord6);
				transform68_g32355.xyz = GetAbsolutePositionWS((transform68_g32355).xyz);
				float3 appendResult95_g32355 = (float3(packedInput.ase_texcoord3.z , 0.0 , packedInput.ase_texcoord3.w));
				float4 transform62_g32355 = mul(GetObjectToWorldMatrix(),float4( ( packedInput.ase_texcoord6.xyz - ( appendResult95_g32355 * _vertex_pivot_mode ) ) , 0.0 ));
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
				half Global_ExtrasTex_B156_g32109 = break49_g32352.z;
				float temp_output_1025_0_g32109 = ( Global_OverlayIntensity154_g32109 * _GlobalOverlay * Global_ExtrasTex_B156_g32109 );
				half Overlay_Commons1365_g32109 = temp_output_1025_0_g32109;
				half Overlay_Mask269_g32109 = saturate( ( saturate( worldNormal178_g32109.y ) - ( 1.0 - Overlay_Commons1365_g32109 ) ) );
				float lerpResult343_g32109 = lerp( Blend_Smoothness314_g32109 , Global_OverlaySmoothness311_g32109 , Overlay_Mask269_g32109);
				half Final_Smoothness371_g32109 = lerpResult343_g32109;
				half Global_Wetness1016_g32109 = ( TVE_Wetness * _GlobalWetness );
				half Global_ExtrasTex_A1033_g32109 = break49_g32352.w;
				float lerpResult1037_g32109 = lerp( Final_Smoothness371_g32109 , saturate( ( Final_Smoothness371_g32109 + Global_Wetness1016_g32109 ) ) , Global_ExtrasTex_A1033_g32109);
				
				float4 tex2DNode29_g32109 = tex2D( _MainAlbedoTex, Main_UVs15_g32109 );
				float4 temp_output_51_0_g32109 = ( _MainColor * tex2DNode29_g32109 );
				half Main_Alpha316_g32109 = (temp_output_51_0_g32109).a;
				
				float localCustomAlphaClip9_g32414 = ( 0.0 );
				half Main_AlphaRaw1203_g32109 = tex2DNode29_g32109.a;
				half Alpha5_g32414 = Main_AlphaRaw1203_g32109;
				float Alpha9_g32414 = Alpha5_g32414;
				#if _ALPHATEST_ON
				clip(Alpha9_g32414 - _Cutoff);
				#endif
				half Final_Clip914_g32109 = localCustomAlphaClip9_g32414;
				
				surfaceDescription.Normal = Final_Normal366_g32109;
				surfaceDescription.Smoothness = lerpResult1037_g32109;
				surfaceDescription.Alpha = Main_Alpha316_g32109;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = Final_Clip914_g32109;
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

			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_VFACE
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_POSITION
			#pragma shader_feature_local TVE_DETAIL_MODE_OFF TVE_DETAIL_MODE_OVERLAY TVE_DETAIL_MODE_REPLACE
			#pragma shader_feature_local TVE_DETAIL_MAPS_STANDARD TVE_DETAIL_MAPS_PACKED
			#pragma shader_feature_local TVE_DETAIL_TYPE_VERTEX_BLUE TVE_DETAIL_TYPE_PROJECTION
			  
			//SHADER INJECTION POINT BEGIN
           //Vegetation Studio (Instanced Indirect)
           #include "Assets/BOXOPHOBIC/The Vegetation Engine/Core/Library/VS_IndirectHD.cginc"
           #pragma instancing_options procedural:setupVSPro forwardadd
           #pragma multi_compile GPU_FRUSTUM_ON __
			//SHADER INJECTION POINT END
			    
			#define TVE_IS_OBJECT_SHADER
			#define TVE_VERTEX_DATA_BATCHED


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
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_color : COLOR;
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			CBUFFER_START( UnityPerMaterial )
			float4 _MaxBoundsInfo;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _SecondColor;
			half4 _SecondUVs;
			float4 _SubsurfaceDiffusion_asset;
			float4 _Color;
			half3 _render_normals_options;
			half _Banner;
			half _IsPropShader;
			half _IsAnyPathShader;
			half _BatchingMessage;
			float _MotionVariation_32;
			half _DetailMapsMode;
			half _DetailTypeMode;
			half _GlobalCat;
			half _ObjectDataMessage;
			half _DetailCat;
			half _AdvancedCat;
			float _MotionScale_20;
			half _MainCat;
			float _MotionVariation_30;
			half _RenderMode;
			half _MotionAmplitude_20;
			half _MotionVariation_10;
			half _render_dst;
			half _IsLitShader;
			half _render_src;
			half _render_cull;
			half _GlobalWetness;
			half _SecondSmoothnessValue;
			half _MainSmoothnessValue;
			half _SecondMetallicValue;
			half _MainMetallicValue;
			half _render_premul;
			half _vertex_pivot_mode;
			half _GlobalOverlay;
			half _OverlayContrastValue;
			half _DetailNormalValue;
			half _SecondNormalValue;
			half _DetailMaskContrast;
			half _DetailMaskValue;
			half _DetailMaskMode;
			half _DetailProjectionMode;
			half _DetailMeshValue;
			half _DetailCoordMode;
			half _render_zw;
			half _WorldDataMessage;
			half _render_cutoff;
			float _MotionSpeed_10;
			half _RenderPriority;
			half _MainOcclusionValue;
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
			half _IsStandardShader;
			half _MotionAmplitude_30;
			half _InteractionVariation;
			float _MotionScale_32;
			half _IsTVEShader;
			half _RenderBlend;
			half _RenderZWrite;
			half _MotionAmplitude_32;
			half _RenderCull;
			float _MotionSpeed_30;
			half _PivotsMessage;
			half _MotionAmplitude_10;
			float _MotionScale_10;
			float _MotionSpeed_20;
			half _DetailMode;
			half _RenderClip;
			float _MotionSpeed_32;
			float _MotionScale_30;
			half _RenderNormals;
			half _MainNormalValue;
			half _IsVersion;
			half _RenderingCat;
			half _VertexVariationMode;
			half _MotionVariation_20;
			half _Cutoff;
			half _InteractionAmplitude;
			half _SecondOcclusionValue;
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
			sampler2D _MainAlbedoTex;
			sampler2D _SecondAlbedoTex;
			sampler2D _SecondPackedTex;
			SAMPLER(sampler_SecondPackedTex);
			sampler2D _MainMaskTex;
			SAMPLER(sampler_MainMaskTex);
			sampler2D _SecondMaskTex;
			SAMPLER(sampler_SecondMaskTex);
			half4 TVE_OverlayColor;
			sampler2D _MainNormalTex;
			SAMPLER(sampler_MainNormalTex);
			sampler2D _SecondNormalTex;
			SAMPLER(sampler_SecondNormalTex);
			half TVE_OverlayIntensity;
			sampler2D TVE_ExtrasTex;
			half4 TVE_VolumeCoord;
			sampler2D TVE_ExtrasTex_Vegetation;
			sampler2D TVE_ExtrasTex_Grass;
			sampler2D TVE_ExtrasTex_Objects;
			sampler2D TVE_ExtrasTex_User;
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
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.tangentOS.xyz);
				float ase_vertexTangentSign = inputMesh.tangentOS.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord8.xyz = ase_worldBitangent;
				
				outputPackedVaryingsMeshToPS.ase_texcoord7 = inputMesh.ase_texcoord;
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;
				outputPackedVaryingsMeshToPS.ase_texcoord9 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord8.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = defaultVertexValue;

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
				half2 Main_UVs15_g32109 = ( ( packedInput.ase_texcoord7.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g32109 = tex2D( _MainAlbedoTex, Main_UVs15_g32109 );
				float4 temp_output_51_0_g32109 = ( _MainColor * tex2DNode29_g32109 );
				half3 Main_AlbedoRaw99_g32109 = (temp_output_51_0_g32109).rgb;
				half3 Main_AlbedoTinted2808_g32109 = ( float3(1,1,1) * float3(1,1,1) * Main_AlbedoRaw99_g32109 * float3(1,1,1) );
				half3 Main_AlbedoColored863_g32109 = Main_AlbedoTinted2808_g32109;
				float2 lerpResult1545_g32109 = lerp( packedInput.ase_texcoord7.xy , packedInput.interp03.xy , _DetailCoordMode);
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				#if defined(TVE_DETAIL_TYPE_VERTEX_BLUE)
				float2 staticSwitch3466_g32109 = lerpResult1545_g32109;
				#elif defined(TVE_DETAIL_TYPE_PROJECTION)
				float2 staticSwitch3466_g32109 = (ase_worldPos).xz;
				#else
				float2 staticSwitch3466_g32109 = lerpResult1545_g32109;
				#endif
				half2 Second_UVs17_g32109 = ( ( staticSwitch3466_g32109 * (_SecondUVs).xy ) + (_SecondUVs).zw );
				float4 tex2DNode3380_g32109 = tex2D( _SecondPackedTex, Second_UVs17_g32109 );
				half Packed_Albedo3385_g32109 = tex2DNode3380_g32109.r;
				float4 temp_cast_0 = (Packed_Albedo3385_g32109).xxxx;
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float4 staticSwitch3449_g32109 = tex2D( _SecondAlbedoTex, Second_UVs17_g32109 );
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float4 staticSwitch3449_g32109 = temp_cast_0;
				#else
				float4 staticSwitch3449_g32109 = tex2D( _SecondAlbedoTex, Second_UVs17_g32109 );
				#endif
				half3 Second_Albedo153_g32109 = (( _SecondColor * staticSwitch3449_g32109 )).rgb;
				half3 Second_AlbedoColored1963_g32109 = Second_Albedo153_g32109;
				half Mesh_DetailMask90_g32109 = packedInput.ase_color.b;
				float temp_output_989_0_g32109 = ( ( Mesh_DetailMask90_g32109 - 0.5 ) + _DetailMeshValue );
				float3 lerpResult1537_g32109 = lerp( float3(0,1,0) , float3(0,-1,0) , _DetailProjectionMode);
				float dotResult1532_g32109 = dot( normalWS , lerpResult1537_g32109 );
				#if defined(TVE_DETAIL_TYPE_VERTEX_BLUE)
				float staticSwitch3467_g32109 = temp_output_989_0_g32109;
				#elif defined(TVE_DETAIL_TYPE_PROJECTION)
				float staticSwitch3467_g32109 = ( ( dotResult1532_g32109 * 0.5 ) + _DetailMeshValue );
				#else
				float staticSwitch3467_g32109 = temp_output_989_0_g32109;
				#endif
				half Blend_Source1540_g32109 = staticSwitch3467_g32109;
				float4 tex2DNode35_g32109 = tex2D( _MainMaskTex, Main_UVs15_g32109 );
				half Main_Mask_Raw57_g32109 = tex2DNode35_g32109.b;
				float4 tex2DNode33_g32109 = tex2D( _SecondMaskTex, Second_UVs17_g32109 );
				half Second_Mask81_g32109 = tex2DNode33_g32109.b;
				float lerpResult1327_g32109 = lerp( Main_Mask_Raw57_g32109 , Second_Mask81_g32109 , _DetailMaskMode);
				float temp_output_7_0_g32425 = _DetailMaskContrast;
				float temp_output_973_0_g32109 = saturate( ( ( saturate( ( Blend_Source1540_g32109 + ( Blend_Source1540_g32109 * ( ( ( 1.0 - lerpResult1327_g32109 ) - 0.5 ) + _DetailMaskValue ) ) ) ) - temp_output_7_0_g32425 ) / ( ( 1.0 - _DetailMaskContrast ) - temp_output_7_0_g32425 ) ) );
				half Mask_Detail147_g32109 = temp_output_973_0_g32109;
				float3 lerpResult235_g32109 = lerp( Main_AlbedoColored863_g32109 , ( Main_AlbedoColored863_g32109 * Second_AlbedoColored1963_g32109 * 4.594794 ) , Mask_Detail147_g32109);
				float3 lerpResult208_g32109 = lerp( Main_AlbedoColored863_g32109 , Second_AlbedoColored1963_g32109 , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float3 staticSwitch255_g32109 = Main_AlbedoColored863_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float3 staticSwitch255_g32109 = lerpResult235_g32109;
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float3 staticSwitch255_g32109 = lerpResult208_g32109;
				#else
				float3 staticSwitch255_g32109 = Main_AlbedoColored863_g32109;
				#endif
				half3 Blend_Albedo265_g32109 = staticSwitch255_g32109;
				half3 Blend_AlbedoAndSubsurface149_g32109 = Blend_Albedo265_g32109;
				half3 Global_OverlayColor1758_g32109 = (TVE_OverlayColor).rgb;
				float4 tex2DNode117_g32109 = tex2D( _MainNormalTex, Main_UVs15_g32109 );
				float2 appendResult88_g32418 = (float2(tex2DNode117_g32109.a , tex2DNode117_g32109.g));
				float2 temp_output_90_0_g32418 = ( (appendResult88_g32418*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult91_g32418 = (float3(temp_output_90_0_g32418 , 1.0));
				half3 Main_Normal137_g32109 = appendResult91_g32418;
				float4 tex2DNode145_g32109 = tex2D( _SecondNormalTex, Second_UVs17_g32109 );
				float2 appendResult88_g32315 = (float2(tex2DNode145_g32109.a , tex2DNode145_g32109.g));
				float2 temp_output_90_0_g32315 = ( (appendResult88_g32315*2.0 + -1.0) * _SecondNormalValue );
				float3 appendResult91_g32315 = (float3(temp_output_90_0_g32315 , 1.0));
				half Packed_NormalX3387_g32109 = tex2DNode3380_g32109.a;
				half Packed_NormalY3386_g32109 = tex2DNode3380_g32109.g;
				float2 appendResult88_g32430 = (float2(Packed_NormalX3387_g32109 , Packed_NormalY3386_g32109));
				float2 temp_output_90_0_g32430 = ( (appendResult88_g32430*2.0 + -1.0) * _SecondNormalValue );
				float3 appendResult91_g32430 = (float3(temp_output_90_0_g32430 , 1.0));
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float3 staticSwitch3450_g32109 = appendResult91_g32315;
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float3 staticSwitch3450_g32109 = appendResult91_g32430;
				#else
				float3 staticSwitch3450_g32109 = appendResult91_g32315;
				#endif
				half3 Second_Normal179_g32109 = staticSwitch3450_g32109;
				float3 lerpResult230_g32109 = lerp( float3( 0,0,1 ) , Second_Normal179_g32109 , Mask_Detail147_g32109);
				float3 lerpResult3372_g32109 = lerp( float3( 0,0,1 ) , Main_Normal137_g32109 , _DetailNormalValue);
				float3 lerpResult3376_g32109 = lerp( Main_Normal137_g32109 , BlendNormal( lerpResult3372_g32109 , Second_Normal179_g32109 ) , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float3 staticSwitch267_g32109 = Main_Normal137_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float3 staticSwitch267_g32109 = BlendNormal( Main_Normal137_g32109 , lerpResult230_g32109 );
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float3 staticSwitch267_g32109 = lerpResult3376_g32109;
				#else
				float3 staticSwitch267_g32109 = Main_Normal137_g32109;
				#endif
				half3 Blend_NormalRaw1051_g32109 = staticSwitch267_g32109;
				float3 switchResult1063_g32109 = (((isFrontFace>0)?(Blend_NormalRaw1051_g32109):(( Blend_NormalRaw1051_g32109 * float3(-1,-1,-1) ))));
				half Overlay_Contrast1405_g32109 = _OverlayContrastValue;
				float3 appendResult1439_g32109 = (float3(Overlay_Contrast1405_g32109 , Overlay_Contrast1405_g32109 , 1.0));
				float3 ase_worldBitangent = packedInput.ase_texcoord8.xyz;
				float3 tanToWorld0 = float3( tangentWS.xyz.x, ase_worldBitangent.x, normalWS.x );
				float3 tanToWorld1 = float3( tangentWS.xyz.y, ase_worldBitangent.y, normalWS.y );
				float3 tanToWorld2 = float3( tangentWS.xyz.z, ase_worldBitangent.z, normalWS.z );
				float3 tanNormal178_g32109 = ( switchResult1063_g32109 * appendResult1439_g32109 );
				float3 worldNormal178_g32109 = float3(dot(tanToWorld0,tanNormal178_g32109), dot(tanToWorld1,tanNormal178_g32109), dot(tanToWorld2,tanNormal178_g32109));
				half Global_OverlayIntensity154_g32109 = TVE_OverlayIntensity;
				float3 localObjectPosition_UNITY_MATRIX_M14_g32355 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g32358 = localObjectPosition_UNITY_MATRIX_M14_g32355;
				float4 transform68_g32355 = mul(GetObjectToWorldMatrix(),packedInput.ase_texcoord9);
				transform68_g32355.xyz = GetAbsolutePositionWS((transform68_g32355).xyz);
				float3 appendResult95_g32355 = (float3(packedInput.ase_texcoord7.z , 0.0 , packedInput.ase_texcoord7.w));
				float4 transform62_g32355 = mul(GetObjectToWorldMatrix(),float4( ( packedInput.ase_texcoord9.xyz - ( appendResult95_g32355 * _vertex_pivot_mode ) ) , 0.0 ));
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
				half Global_ExtrasTex_B156_g32109 = break49_g32352.z;
				float temp_output_1025_0_g32109 = ( Global_OverlayIntensity154_g32109 * _GlobalOverlay * Global_ExtrasTex_B156_g32109 );
				half Overlay_Commons1365_g32109 = temp_output_1025_0_g32109;
				half Overlay_Mask269_g32109 = saturate( ( saturate( worldNormal178_g32109.y ) - ( 1.0 - Overlay_Commons1365_g32109 ) ) );
				float3 lerpResult336_g32109 = lerp( Blend_AlbedoAndSubsurface149_g32109 , Global_OverlayColor1758_g32109 , Overlay_Mask269_g32109);
				half3 Final_Albedo359_g32109 = lerpResult336_g32109;
				half Main_Alpha316_g32109 = (temp_output_51_0_g32109).a;
				float lerpResult354_g32109 = lerp( 1.0 , Main_Alpha316_g32109 , _render_premul);
				half Final_Premultiply355_g32109 = lerpResult354_g32109;
				float3 temp_output_410_0_g32109 = ( Final_Albedo359_g32109 * Final_Premultiply355_g32109 );
				
				float3 temp_output_13_0_g32320 = staticSwitch267_g32109;
				float3 switchResult12_g32320 = (((isFrontFace>0)?(temp_output_13_0_g32320):(( temp_output_13_0_g32320 * _render_normals_options ))));
				half3 Blend_Normal312_g32109 = switchResult12_g32320;
				half3 Final_Normal366_g32109 = Blend_Normal312_g32109;
				
				half Main_Metallic237_g32109 = ( tex2DNode35_g32109.r * _MainMetallicValue );
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float staticSwitch3451_g32109 = ( tex2DNode33_g32109.r * _SecondMetallicValue );
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float staticSwitch3451_g32109 = 0.0;
				#else
				float staticSwitch3451_g32109 = ( tex2DNode33_g32109.r * _SecondMetallicValue );
				#endif
				half Second_Metallic226_g32109 = staticSwitch3451_g32109;
				float lerpResult278_g32109 = lerp( Main_Metallic237_g32109 , Second_Metallic226_g32109 , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch299_g32109 = Main_Metallic237_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float staticSwitch299_g32109 = Main_Metallic237_g32109;
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float staticSwitch299_g32109 = lerpResult278_g32109;
				#else
				float staticSwitch299_g32109 = Main_Metallic237_g32109;
				#endif
				half Blend_Metallic306_g32109 = staticSwitch299_g32109;
				float lerpResult342_g32109 = lerp( Blend_Metallic306_g32109 , 0.0 , Overlay_Mask269_g32109);
				half Final_Metallic367_g32109 = lerpResult342_g32109;
				
				half Main_Smoothness227_g32109 = ( tex2DNode35_g32109.a * _MainSmoothnessValue );
				half Packed_Smoothness3388_g32109 = tex2DNode3380_g32109.b;
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float staticSwitch3456_g32109 = tex2DNode33_g32109.a;
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float staticSwitch3456_g32109 = Packed_Smoothness3388_g32109;
				#else
				float staticSwitch3456_g32109 = tex2DNode33_g32109.a;
				#endif
				half Second_Smoothness236_g32109 = ( staticSwitch3456_g32109 * _SecondSmoothnessValue );
				float lerpResult266_g32109 = lerp( Main_Smoothness227_g32109 , Second_Smoothness236_g32109 , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch297_g32109 = Main_Smoothness227_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float staticSwitch297_g32109 = Main_Smoothness227_g32109;
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float staticSwitch297_g32109 = lerpResult266_g32109;
				#else
				float staticSwitch297_g32109 = Main_Smoothness227_g32109;
				#endif
				half Blend_Smoothness314_g32109 = staticSwitch297_g32109;
				half Global_OverlaySmoothness311_g32109 = TVE_OverlaySmoothness;
				float lerpResult343_g32109 = lerp( Blend_Smoothness314_g32109 , Global_OverlaySmoothness311_g32109 , Overlay_Mask269_g32109);
				half Final_Smoothness371_g32109 = lerpResult343_g32109;
				half Global_Wetness1016_g32109 = ( TVE_Wetness * _GlobalWetness );
				half Global_ExtrasTex_A1033_g32109 = break49_g32352.w;
				float lerpResult1037_g32109 = lerp( Final_Smoothness371_g32109 , saturate( ( Final_Smoothness371_g32109 + Global_Wetness1016_g32109 ) ) , Global_ExtrasTex_A1033_g32109);
				
				float lerpResult240_g32109 = lerp( 1.0 , tex2DNode35_g32109.g , _MainOcclusionValue);
				half Main_Occlusion247_g32109 = lerpResult240_g32109;
				float lerpResult239_g32109 = lerp( 1.0 , tex2DNode33_g32109.g , _SecondOcclusionValue);
				#if defined(TVE_DETAIL_MAPS_STANDARD)
				float staticSwitch3455_g32109 = lerpResult239_g32109;
				#elif defined(TVE_DETAIL_MAPS_PACKED)
				float staticSwitch3455_g32109 = 1.0;
				#else
				float staticSwitch3455_g32109 = lerpResult239_g32109;
				#endif
				half Second_Occlusion251_g32109 = staticSwitch3455_g32109;
				float lerpResult294_g32109 = lerp( Main_Occlusion247_g32109 , Second_Occlusion251_g32109 , Mask_Detail147_g32109);
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch310_g32109 = Main_Occlusion247_g32109;
				#elif defined(TVE_DETAIL_MODE_OVERLAY)
				float staticSwitch310_g32109 = ( Main_Occlusion247_g32109 * Second_Occlusion251_g32109 );
				#elif defined(TVE_DETAIL_MODE_REPLACE)
				float staticSwitch310_g32109 = lerpResult294_g32109;
				#else
				float staticSwitch310_g32109 = Main_Occlusion247_g32109;
				#endif
				half Blend_Occlusion323_g32109 = staticSwitch310_g32109;
				
				float localCustomAlphaClip9_g32414 = ( 0.0 );
				half Main_AlphaRaw1203_g32109 = tex2DNode29_g32109.a;
				half Alpha5_g32414 = Main_AlphaRaw1203_g32109;
				float Alpha9_g32414 = Alpha5_g32414;
				#if _ALPHATEST_ON
				clip(Alpha9_g32414 - _Cutoff);
				#endif
				half Final_Clip914_g32109 = localCustomAlphaClip9_g32414;
				
				surfaceDescription.Albedo = temp_output_410_0_g32109;
				surfaceDescription.Normal = Final_Normal366_g32109;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = Final_Metallic367_g32109;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = lerpResult1037_g32109;
				surfaceDescription.Occlusion = Blend_Occlusion323_g32109;
				surfaceDescription.Alpha = Main_Alpha316_g32109;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = Final_Clip914_g32109;
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
1927;7;1906;1015;2810.561;1088.499;1;True;False
Node;AmplifyShaderEditor.RangedFloatNode;81;-1552,-896;Half;False;Property;_IsLitShader;_IsLitShader;206;1;[HideInInspector];Create;True;0;0;True;0;False;1;0;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;341;-2176,256;Inherit;False;Use TVE_VERTEX_DATA_BATCHED;-1;;32434;749c61e1189c7f8408d9e6db94560d1d;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;134;-1776,-896;Half;False;Property;_IsStandardShader;_IsStandardShader;207;1;[HideInInspector];Create;True;0;0;True;0;False;1;0;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;368;-2176,-384;Inherit;False;Base Shader;1;;32109;856f7164d1c579d43a5cf4968a75ca43;50,1300,1,1298,1,1271,0,1708,0,1962,0,1712,0,1964,1,1969,1,1719,0,893,0,1745,0,1742,0,1718,1,1717,1,1715,1,1714,1,916,1,1949,1,1762,0,1763,0,1776,0,1646,0,1690,0,1757,0,3221,3,1981,0,2807,0,2953,0,3243,0,2172,0,2658,0,1734,1,1737,1,1733,1,1736,1,1968,1,1966,1,1735,1,878,1,1550,1,860,0,2750,0,2260,1,2261,1,2054,1,2032,1,2036,1,2060,1,2062,1,2039,1;0;15;FLOAT3;0;FLOAT3;528;FLOAT3;2489;FLOAT;529;FLOAT;530;FLOAT;531;FLOAT;1235;FLOAT3;1230;FLOAT;1461;FLOAT;1290;FLOAT;721;FLOAT;532;FLOAT;653;FLOAT;629;FLOAT3;534
Node;AmplifyShaderEditor.RangedFloatNode;342;-1376,-896;Half;False;Property;_IsAnyPathShader;_IsAnyPathShader;205;1;[HideInInspector];Create;True;0;0;True;0;False;1;0;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;343;-2176,320;Inherit;False;Use TVE_IS_OBJECT_SHADER;-1;;32433;1237b3cc9fbfe714d8343c91216dc9b4;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;127;-1984,-896;Half;False;Property;_IsPropShader;_IsPropShader;204;1;[HideInInspector];Create;True;0;0;True;0;False;1;0;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;31;-2176,-896;Half;False;Property;_Banner;Banner;0;0;Create;True;0;0;True;1;StyledBanner(Prop Standard Lit);False;0;0;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;373;-2176,-768;Half;False;Property;_render_cutoff;_render_cutoff;208;1;[HideInInspector];Create;True;4;Alpha;0;Premultiply;1;Additive;2;Multiply;3;0;True;0;False;0.5;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;372;-1920,-768;Half;False;Property;_render_cull;_render_cull;209;1;[HideInInspector];Create;True;3;Both;0;Back;1;Front;2;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;371;-1744,-768;Half;False;Property;_render_src;_render_src;210;1;[HideInInspector];Create;True;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;370;-1376,-768;Half;False;Property;_render_zw;_render_zw;212;1;[HideInInspector];Create;True;2;Opaque;0;Transparent;1;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;369;-1552,-768;Half;False;Property;_render_dst;_render_dst;211;1;[HideInInspector];Create;True;2;Opaque;0;Transparent;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;354;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentBackface;0;7;TransparentBackface;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;1;0;True;-19;0;True;-20;1;0;True;-21;0;True;-22;False;False;False;False;False;False;False;False;True;1;False;-1;False;True;True;True;True;True;0;True;-44;False;False;False;True;0;True;-23;True;0;True;-31;False;True;1;LightMode=TransparentBackface;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;347;-1376,-384;Float;False;True;-1;2;TVEShaderCoreGUI;0;2;BOXOPHOBIC/The Vegetation Engine/Objects/Prop Standard Lit;53b46d85872c5b24c8f4f0a1c3fe4c87;True;GBuffer;0;0;GBuffer;35;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;0;True;-25;False;False;False;False;True;True;0;True;-13;255;False;-1;255;True;-12;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;0;True;-14;False;True;1;LightMode=GBuffer;False;0;;0;0;Standard;41;Surface Type;0;  Rendering Pass;1;  Refraction Model;0;    Blending Mode;0;    Blend Preserves Specular;1;  Receive Fog;1;  Back Then Front Rendering;0;  Transparent Depth Prepass;0;  Transparent Depth Postpass;0;  Transparent Writes Motion Vector;0;  Distortion;0;    Distortion Mode;0;    Distortion Depth Test;1;  ZWrite;0;  Z Test;4;Double-Sided;1;Alpha Clipping;1;  Use Shadow Threshold;0;Material Type,InvertActionOnDeselection;0;  Energy Conserving Specular;1;  Transmission;1;Receive Decals;1;Receives SSR;1;Motion Vectors;0;  Add Precomputed Velocity;0;Specular AA;0;Specular Occlusion Mode;1;Override Baked GI;0;Depth Offset;0;DOTS Instancing;1;LOD CrossFade;1;Tessellation;0;  Phong;0;  Strength;0.5,False,-1;  Type;0;  Tess;16,False,-1;  Min;10,False,-1;  Max;25,False,-1;  Edge Length;16,False,-1;  Max Displacement;25,False,-1;Vertex Position;0;0;11;True;True;True;True;True;False;False;False;False;False;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;350;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;SceneSelectionPass;0;3;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;352;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;Motion Vectors;0;5;Motion Vectors;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;0;True;-25;False;False;False;False;True;True;0;True;-8;255;False;-1;255;True;-9;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;1;False;-1;False;False;True;1;LightMode=MotionVectors;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;353;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;Distortion;0;6;Distortion;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;4;1;False;-1;1;False;-1;4;1;False;-1;1;False;-1;True;1;False;-1;1;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;True;0;True;-10;255;False;-1;255;True;-11;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;False;True;1;LightMode=DistortionVectors;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;355;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentDepthPrepass;0;8;TransparentDepthPrepass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;True;0;True;-25;True;False;False;False;False;0;False;-1;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=TransparentDepthPrepass;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;349;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;0;True;-25;True;False;False;False;False;0;False;-1;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;357;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;Forward;0;10;Forward;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;1;0;True;-19;0;True;-20;1;0;True;-21;0;True;-22;False;False;False;False;False;False;False;False;True;0;True;-28;False;True;True;True;True;True;0;True;-44;False;False;True;True;0;True;-4;255;False;-1;255;True;-5;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;0;True;-23;True;0;True;-30;False;True;1;LightMode=Forward;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;351;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;DepthOnly;0;4;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;0;True;-25;False;False;False;False;True;True;0;True;-6;255;False;-1;255;True;-7;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;1;False;-1;False;False;True;1;LightMode=DepthOnly;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;356;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentDepthPostpass;0;9;TransparentDepthPostpass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;True;0;True;-25;True;False;False;False;False;0;False;-1;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=TransparentDepthPostpass;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;348;-1376,-384;Float;False;False;-1;2;UnityEditor.Rendering.HighDefinition.HDLitGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;META;0;1;META;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.CommentaryNode;33;-2176,-512;Inherit;False;1022.896;100;Final;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;340;-2176,128;Inherit;False;1026.438;100;Features;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;37;-2176,-1024;Inherit;False;1026.438;100;Internal;0;;1,0.252,0,1;0;0
WireConnection;347;0;368;0
WireConnection;347;1;368;528
WireConnection;347;4;368;529
WireConnection;347;7;368;530
WireConnection;347;8;368;531
WireConnection;347;9;368;532
WireConnection;347;10;368;653
ASEEND*/
//CHKSM=62E1D29DD0863AF19CE3F75EC0AB28DDDE6D31D0
