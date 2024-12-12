Network UNet {
Layer CONV1_1 {
		Type: CONV
		Dimensions { K: 64, C: 1, R: 3, S: 3, Y: 572, X: 572 }
		Dataflow {
			SpatialMap(128,128) Y;
			SpatialMap(128,128) X;
			TemporalMap(8,8) C;
			TemporalMap(8,8) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(4096, P);
			SpatialMap(128,128) K;
		}
	}

Layer CONV1_2 {
		Type: CONV
		Dimensions { K: 64, C: 64, R: 3, S: 3, Y: 570, X: 570 }
		Dataflow {
			SpatialMap(128,128) Y;
			SpatialMap(128,128) X;
			TemporalMap(8,8) C;
			TemporalMap(8,8) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(4096, P);
			SpatialMap(128,128) K;
		}
	}

Layer CONV2_1 {
		Type: CONV
		Dimensions { K: 128, C: 64, R: 3, S: 3, Y: 284, X: 284 }
		Dataflow {
			SpatialMap(64,64) Y;
			SpatialMap(64,64) X;
			TemporalMap(16,16) C;
			TemporalMap(16,16) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(4096, P);
			SpatialMap(64,64) K;
		}
	}

Layer CONV2_2 {
		Type: CONV
		Dimensions { K: 128, C: 128, R: 3, S: 3, Y: 282, X: 282 }
		Dataflow {
			SpatialMap(64,64) Y;
			SpatialMap(64,64) X;
			TemporalMap(16,16) C;
			TemporalMap(16,16) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(4096, P);
			SpatialMap(64,64) K;
		}
	}

Layer CONV3_1 {
		Type: CONV
		Dimensions { K: 256, C: 128, R: 3, S: 3, Y: 140, X: 140 }
		Dataflow {
			SpatialMap(32,32) Y;
			SpatialMap(32,32) X;
			TemporalMap(32,32) C;
			TemporalMap(32,32) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(2048, P);
			SpatialMap(32,32) K;
		}
	}

Layer CONV3_2 {
		Type: CONV
		Dimensions { K: 256, C: 256, R: 3, S: 3, Y: 138, X: 138 }
		Dataflow {
			SpatialMap(32,32) Y;
			SpatialMap(32,32) X;
			TemporalMap(32,32) C;
			TemporalMap(32,32) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(2048, P);
			SpatialMap(32,32) K;
		}
	}

Layer CONV4_1 {
		Type: CONV
		Dimensions { K: 512, C: 256, R: 3, S: 3, Y: 68, X: 68 }
		Dataflow {
			SpatialMap(16,16) Y;
			SpatialMap(16,16) X;
			TemporalMap(64,64) C;
			TemporalMap(64,64) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(1024, P);
			SpatialMap(16,16) K;
		}
	}

Layer CONV4_2 {
		Type: CONV
		Dimensions { K: 512, C: 512, R: 3, S: 3, Y: 66, X: 66 }
		Dataflow {
			SpatialMap(16,16) Y;
			SpatialMap(16,16) X;
			TemporalMap(64,64) C;
			TemporalMap(64,64) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(1024, P);
			SpatialMap(16,16) K;
		}
	}

Layer CONV4_3 {
		Type: CONV
		Dimensions { K: 512, C: 1024, R: 3, S: 3, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(16,16) Y;
			SpatialMap(16,16) X;
			TemporalMap(64,64) C;
			TemporalMap(64,64) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(1024, P);
			SpatialMap(16,16) K;
		}
	}



Layer CONV4_4 {
		Type: CONV
		Dimensions { K: 512, C: 512, R: 3, S: 3, Y: 54, X: 54 }
		Dataflow {
			SpatialMap(16,16) Y;
			SpatialMap(16,16) X;
			TemporalMap(64,64) C;
			TemporalMap(64,64) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(1024, P);
			SpatialMap(16,16) K;
		}
	}

	Layer TRCONV2 {
		Type: TRCONV
		Dimensions { K: 512, C: 512, R: 2, S: 2, Y: 52, X: 52 }
		Dataflow {
			SpatialMap(16,16) Y;
			SpatialMap(16,16) X;
			TemporalMap(64,64) C;
			TemporalMap(64,64) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(1024, P);
			SpatialMap(16,16) K;
		}
	}

	Layer CONV3_3 {
		Type: CONV
		Dimensions { K: 256, C: 512, R: 3, S: 3, Y: 104, X: 104 }
		Dataflow {
			SpatialMap(32,32) Y;
			SpatialMap(32,32) X;
			TemporalMap(32,32) C;
			TemporalMap(32,32) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(2048, P);
			SpatialMap(32,32) K;
		}
	}

	Layer CONV3_4 {
		Type: CONV
		Dimensions { K: 256, C: 256, R: 3, S: 3, Y: 102, X: 102 }
		Dataflow {
			SpatialMap(32,32) Y;
			SpatialMap(32,32) X;
			TemporalMap(32,32) C;
			TemporalMap(32,32) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(2048, P);
			SpatialMap(32,32) K;
		}
	}

	Layer TRCONV3 {
		Type: TRCONV
		Dimensions { K: 128, C: 256, R: 2, S: 2, Y: 100, X: 100 }
		Dataflow {
			SpatialMap(32,32) Y;
			SpatialMap(32,32) X;
			TemporalMap(32,32) C;
			TemporalMap(16,16) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(2048, P);
			SpatialMap(32,32) K;
		}
	}

	Layer CONV2_3 {
		Type: CONV
		Dimensions { K: 128, C: 256, R: 3, S: 3, Y: 200, X: 200 }
		Dataflow {
			SpatialMap(64,64) Y;
			SpatialMap(64,64) X;
			TemporalMap(16,16) C;
			TemporalMap(16,16) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(4096, P);
			SpatialMap(64,64) K;
		}
	}

	Layer CONV2_4 {
		Type: CONV
		Dimensions { K: 128, C: 128, R: 3, S: 3, Y: 198, X: 198 }
		Dataflow {
			SpatialMap(64,64) Y;
			SpatialMap(64,64) X;
			TemporalMap(16,16) C;
			TemporalMap(16,16) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(4096, P);
			SpatialMap(64,64) K;
		}
	}

	Layer TRCONV4 {
		Type: TRCONV
		Dimensions { K: 64, C: 128, R: 2, S: 2, Y: 196, X: 196 }
		Dataflow {
			SpatialMap(64,64) Y;
			SpatialMap(64,64) X;
			TemporalMap(16,16) C;
			TemporalMap(16,16) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(4096, P);
			SpatialMap(64,64) K;
		}
	}

	Layer CONV1_3 {
		Type: CONV
		Dimensions { K: 64, C: 128, R: 3, S: 3, Y: 392, X: 392 }
		Dataflow {
			SpatialMap(64,64) Y;
			SpatialMap(64,64) X;
			TemporalMap(16,16) C;
			TemporalMap(16,16) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(4096, P);
			SpatialMap(64,64) K;
		}
	}

	Layer CONV1_4 {
		Type: CONV
		Dimensions { K: 64, C: 64, R: 3, S: 3, Y: 390, X: 390 }
		Dataflow {
			SpatialMap(64,64) Y;
			SpatialMap(64,64) X;
			TemporalMap(16,16) C;
			TemporalMap(16,16) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(4096, P);
			SpatialMap(64,64) K;
		}
	}

	Layer CONV1_5 {
		Type: CONV
		Dimensions { K: 2, C: 64, R: 1, S: 1, Y: 388, X: 388 }
		Dataflow {
			SpatialMap(64,64) Y;
			SpatialMap(64,64) X;
			TemporalMap(16,16) C;
			TemporalMap(16,16) K;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			Cluster(4096, P);
			SpatialMap(64,64) K;
		}
	}

	
}


// Accelerator {
//  PE { NumPEs: 128; VectorWidth: 4; MultPrecision: INT8, AddPrecision: INT16 }
//  Buffer { GlobalL2: 2048, LocalL1: 64}
//  NoC {Bandwidth: 64; AvgLatency: 2}
// }