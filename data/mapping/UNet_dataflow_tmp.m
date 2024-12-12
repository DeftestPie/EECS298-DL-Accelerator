Network UNet {
  Layer Encoder {
    Type: CONV
    Stride { Y: 1, X: 1 }
    Dimensions { 
      K: 64,         // Output channels
      C: 3,          // Input channels
      R: 3,          // Filter height
      S: 3,          // Filter width
      Y: 128,        // Input height
      X: 128         // Input width
    }
    Dataflow {
      SpatialMap(1,1) C;
      TemporalMap(Sz(R),1) Y;
      TemporalMap(Sz(S),1) X;
      TemporalMap(Sz(R),Sz(R)) R;
      TemporalMap(Sz(S),Sz(S)) S;
    }
  }

  Layer Decoder {
    Type: CONV
    Stride { Y: 2, X: 2 }
    Dimensions { 
      K: 3,          // Output channels
      C: 64,         // Input channels
      R: 3,          // Filter height
      S: 3,          // Filter width
      Y: 64,         // Input height
      X: 64          // Input width
    }
    Dataflow {
      SpatialMap(1,1) C;
      TemporalMap(Sz(R),1) Y;
      TemporalMap(Sz(S),1) X;
      TemporalMap(Sz(R),Sz(R)) R;
      TemporalMap(Sz(S),Sz(S)) S;
    }
  }

  Layer SkipConnections {
    Type: CONV
    Stride { Y: 1, X: 1 }
    Dimensions { 
      K: 64,         // Output channels
      C: 64,         // Input channels
      R: 3,          // Filter height
      S: 3,          // Filter width
      Y: 128,        // Input height
      X: 128         // Input width
    }
    Dataflow {
      SpatialMap(1,1) C;
      TemporalMap(Sz(R),1) Y;
      TemporalMap(Sz(S),1) X;
      TemporalMap(Sz(R),Sz(R)) R;
      TemporalMap(Sz(S),Sz(S)) S;
    }
  }
}

// Network UNet {
//   Layer Encoder {
//     Type: CONV
//     Stride { Y: 1, X: 1 }
//     Dimensions { 
//       K: 64, 
//       C: 3, 
//       R: 3, 
//       S: 3, 
//       Y: 128, 
//       X: 128 
//     }
//     Dataflow {
//       SpatialMap(64,64) Y;  // 64x64 分块映射到 PE
//       SpatialMap(64,64) X;
//       TemporalMap(16,1) C;  // 每次加载 16 个输入通道
//       TemporalMap(16,1) K;  // 每次加载 16 个输出通道
//       TemporalMap(3,3) R;   // 滤波器高度
//       TemporalMap(3,3) S;   // 滤波器宽度
//     }
//   }

//   Layer Decoder {
//     Type: CONV
//     Stride { Y: 2, X: 2 }
//     Dimensions { 
//       K: 3, 
//       C: 64, 
//       R: 3, 
//       S: 3, 
//       Y: 64, 
//       X: 64 
//     }
//     Dataflow {
//       SpatialMap(32,32) Y;  // 32x32 分块映射到 PE
//       SpatialMap(32,32) X;
//       TemporalMap(16,1) C;  // 每次加载 16 个输入通道
//       TemporalMap(3,1) K;   // 每次加载 3 个输出通道
//       TemporalMap(3,3) R;
//       TemporalMap(3,3) S;
//     }
//   }

//   Layer SkipConnections {
//     Type: CONV
//     Stride { Y: 1, X: 1 }
//     Dimensions { 
//       K: 64, 
//       C: 64, 
//       R: 3, 
//       S: 3, 
//       Y: 128, 
//       X: 128 
//     }
//     Dataflow {
//       SpatialMap(64,64) Y;
//       SpatialMap(64,64) X;
//       TemporalMap(16,1) C;
//       TemporalMap(16,1) K;
//       TemporalMap(3,3) R;
//       TemporalMap(3,3) S;
//     }
//   }
// }
