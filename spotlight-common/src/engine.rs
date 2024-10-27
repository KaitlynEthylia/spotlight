use crate::settings::Settings;
use crate::error::Error;

pub struct Item {}

pub enum Control {
	Exit,
	Mode(String),
}

pub trait Engine {
	fn new(settings: &Settings) -> Self;

	fn mode(&mut self, mode: impl AsRef<str>) -> Result<(), impl Error>;

	fn query(&mut self, mode: impl AsRef<str>) -> Result<Control, impl Error>;
}
