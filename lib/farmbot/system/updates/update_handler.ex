defmodule Farmbot.System.UpdateHandler do
  @moduledoc "Behaviour for setting up OTA updates."

  @doc "Called before and update."
  @callback before_update :: :ok | {:error, term}

  @doc "Called after a reboot."
  @callback post_update :: :ok | {:error, term}

  @doc "Apply a fw update."
  @callback apply_firmware(Path.t) :: :ok | {:error, term}
end
