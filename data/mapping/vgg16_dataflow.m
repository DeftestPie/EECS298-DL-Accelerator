Constant MTileSz 1;
Constant NTileSz 64;
Constant KTileSz 128;

Network vgg16 {
	Layer CONV1 { 
		Type: CONV
		Dimensions { K: 64, C: 3, R: 3, S: 3, Y: 224, X: 224 }
		Dataflow {
			SpatialMap(64,64) Y;
			SpatialMap(64,64) X;
			TemporalMap(1,3) C;
			TemporalMap(16,16) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(64, P);
			SpatialMap(128,128) K;
		}
	}

	Layer CONV2 { 
		Type: CONV
		Dimensions { K: 64, C: 64, R: 3, S: 3, Y: 224, X: 224 }
		Dataflow {
			SpatialMap(64,64) Y;
			SpatialMap(64,64) X;
			TemporalMap(1,64) C;
			TemporalMap(32,32) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(64, P);
			SpatialMap(128,128) K;
		}
	}

	Layer CONV3 { 
		Type: CONV
		Dimensions { K: 128, C: 64, R: 3, S: 3, Y: 112, X: 112 }
		Dataflow {
			SpatialMap(32,32) Y;
			SpatialMap(32,32) X;
			TemporalMap(1,64) C;
			TemporalMap(64,64) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(128, P);
			SpatialMap(64,64) K;
		}
	}

	Layer CONV4 { 
		Type: CONV
		Dimensions { K: 128, C: 128, R: 3, S: 3, Y: 112, X: 112 }
		Dataflow {
			SpatialMap(32,32) Y;
			SpatialMap(32,32) X;
			TemporalMap(1,128) C;
			TemporalMap(64,64) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(128, P);
			SpatialMap(64,64) K;
		}
	}

	Layer CONV5 { 
		Type: CONV
		Dimensions { K: 256, C: 128, R: 3, S: 3, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(16,16) Y;
			SpatialMap(16,16) X;
			TemporalMap(1,128) C;
			TemporalMap(128,128) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(256, P);
			SpatialMap(32,32) K;
		}
	}

	Layer CONV6 { 
		Type: CONV
		Dimensions { K: 256, C: 256, R: 3, S: 3, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(16,16) Y;
			SpatialMap(16,16) X;
			TemporalMap(1,256) C;
			TemporalMap(128,128) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(256, P);
			SpatialMap(32,32) K;
		}
	}

	Layer CONV7 { 
		Type: CONV
		Dimensions { K: 256, C: 256, R: 3, S: 3, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(16,16) Y;
			SpatialMap(16,16) X;
			TemporalMap(1,256) C;
			TemporalMap(128,128) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(256, P);
			SpatialMap(32,32) K;
		}
	}

	Layer CONV8 { 
		Type: CONV
		Dimensions { K: 512, C: 256, R: 3, S: 3, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(8,8) Y;
			SpatialMap(8,8) X;
			TemporalMap(1,256) C;
			TemporalMap(256,256) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(512, P);
			SpatialMap(16,16) K;
		}
	}

	Layer CONV9 { 
		Type: CONV
		Dimensions { K: 512, C: 512, R: 3, S: 3, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(8,8) Y;
			SpatialMap(8,8) X;
			TemporalMap(1,512) C;
			TemporalMap(256,256) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(512, P);
			SpatialMap(16,16) K;
		}
	}

	Layer CONV10 { 
		Type: CONV
		Dimensions { K: 512, C: 512, R: 3, S: 3, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(8,8) Y;
			SpatialMap(8,8) X;
			TemporalMap(1,512) C;
			TemporalMap(256,256) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(512, P);
			SpatialMap(16,16) K;
		}
	}

	Layer CONV11 { 
		Type: CONV
		Dimensions { K: 512, C: 512, R: 3, S: 3, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(4,4) Y;
			SpatialMap(4,4) X;
			TemporalMap(1,512) C;
			TemporalMap(512,512) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(512, P);
			SpatialMap(8,8) K;
		}
	}

	Layer CONV12 { 
		Type: CONV
		Dimensions { K: 512, C: 512, R: 3, S: 3, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(4,4) Y;
			SpatialMap(4,4) X;
			TemporalMap(1,512) C;
			TemporalMap(512,512) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(512, P);
			SpatialMap(8,8) K;
		}
	}

	Layer CONV13 { 
		Type: CONV
		Dimensions { K: 512, C: 512, R: 3, S: 3, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(4,4) Y;
			SpatialMap(4,4) X;
			TemporalMap(1,512) C;
			TemporalMap(512,512) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(512, P);
			SpatialMap(8,8) K;
		}
	}

	Layer FC1 { 
		Type: GEMM
		Dimensions { M 4096, N 1, K 25088 }
		Dataflow {
			TemporalMap(NTileSz,NTileSz) N; 
			SpatialMap(MTileSz,MTileSz) M;
			TemporalMap(KTileSz,KTileSz) K;
			Cluster(KTileSz, P);
			TemporalMap(NTileSz,NTileSz) N;			
			TemporalMap(MTileSz,MTileSz) M;
			SpatialMap(1,1) K;
		}
	}

	Layer FC2 { 
		Type: GEMM
		Dimensions { M 4096, N 1, K 4096 }
		Dataflow {
			TemporalMap(NTileSz,NTileSz) N; 
			SpatialMap(MTileSz,MTileSz) M;
			TemporalMap(KTileSz,KTileSz) K;
			Cluster(KTileSz, P);
			TemporalMap(NTileSz,NTileSz) N;			
			TemporalMap(MTileSz,MTileSz) M;
			SpatialMap(1,1) K;
		}
	}

	Layer FC3 { 
		Type: GEMM
		Dimensions { M 4096, N 1, K 4096 }
		Dataflow {
			TemporalMap(NTileSz,NTileSz) N; 
			SpatialMap(MTileSz,MTileSz) M;
			TemporalMap(KTileSz,KTileSz) K;
			Cluster(KTileSz, P);
			TemporalMap(NTileSz,NTileSz) N;			
			TemporalMap(MTileSz,MTileSz) M;
			SpatialMap(1,1) K;
		}
	}
}