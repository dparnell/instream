defmodule Instream.Cluster.DiagnosticsTest do
  use ExUnit.Case, async: true

  alias Instream.Cluster.Diagnostics
  alias Instream.TestHelpers.Connection

  test "diagnostics listing" do
    result = Diagnostics.show() |> Connection.execute()

    %{ results: [%{ series: diagnostics }]} = result

    assert %{ name: _, columns: _, values: _ } = hd(diagnostics)
  end
end
