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
