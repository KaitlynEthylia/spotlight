mod settings;
mod engine;
mod error;

pub mod prelude {
	pub use crate::engine::Engine as SpotlightEngine;
	pub use crate::settings::Settings as SpotlightSettings;
}
