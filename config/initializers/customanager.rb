Rails.application.configure do
  config.customanager = {
    staff: { host: "customanager.example.com", path: "" },
    admin: { host: "customanager.example.com", path: "admin" },
    customer: { host: "example.com", path: "mypage" }
  }
end
