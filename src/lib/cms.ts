import { configureCmsClient } from "./cms-client";

configureCmsClient({
  baseUrl:
    import.meta.env.PUBLIC_CMS_URL ?? "https://admin.voidcraft-dev.com",
});

export * from "./cms-client";
