import { eq } from "drizzle-orm";
import { account, allowance, approval, transfer } from "./db/schema/Listener"; // Adjust the import path as necessary
import { types, db, App } from "@duneanalytics/sim-idx"; // Import schema to ensure it's registered

const app = App.create();
app.get("/approval", async (c) => {
  try {
    const result = await db
      .client(c)
      .select()
      .from(approval)
      .limit(5);

    return Response.json({
      result: result,
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

app.get("/transfer", async (c) => {
  try {
    const result = await db
      .client(c)
      .select()
      .from(transfer)
      .limit(5);

    return Response.json({
      result: result,
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

app.get("/account", async (c) => {
  try {
    const result = await db
      .client(c)
      .select()
      .from(account)
      .limit(5);

    return Response.json({
      result: result,
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

app.get("/allowance", async (c) => {
  try {
    const result = await db
      .client(c)
      .select()
      .from(allowance)
      .limit(5);

    return Response.json({
      result: result,
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});
export default app;
