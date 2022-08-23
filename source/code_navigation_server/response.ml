(*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *)

open Base

type t = Error of string [@@deriving sexp, compare, yojson { strict = false }]

let to_string response = to_yojson response |> Yojson.Safe.to_string