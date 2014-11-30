.class Lam/sunrise/android/calendar/ui/event/add/y;
.super Ljava/lang/Object;
.source "AddEventFragment.java"

# interfaces
.implements Landroid/support/v4/app/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/af",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/add/c;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 1294
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/y;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/event/add/c;Lam/sunrise/android/calendar/ui/event/add/d;)V
    .locals 0

    .prologue
    .line 1294
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/add/y;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/d",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1305
    .line 1310
    const/4 v0, 0x0

    .line 1312
    if-eqz p2, :cond_5

    .line 1313
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1314
    const-string v2, "calendar_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1315
    const-string v2, "calendar_title"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1316
    const-string v2, "calendar_type"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1317
    const-string v2, "calendar_color"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 1320
    :cond_0
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1321
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1323
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1324
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1325
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v5

    .line 1328
    :cond_1
    if-nez v0, :cond_2

    iget-object v10, p0, Lam/sunrise/android/calendar/ui/event/add/y;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v10}, Lam/sunrise/android/calendar/ui/event/add/c;->w(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lam/sunrise/android/calendar/ui/event/add/y;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v10}, Lam/sunrise/android/calendar/ui/event/add/c;->w(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1330
    const/4 v0, 0x1

    .line 1331
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/event/add/y;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lam/sunrise/android/calendar/ui/event/add/c;->b(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1332
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/event/add/y;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lam/sunrise/android/calendar/ui/event/add/c;->c(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1335
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1338
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1341
    :goto_1
    if-nez v0, :cond_3

    .line 1342
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/y;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0, v4}, Lam/sunrise/android/calendar/ui/event/add/c;->d(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1343
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/y;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/ui/event/add/c;->e(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1344
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/y;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/ui/event/add/c;->b(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1345
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/y;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->c(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1348
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/y;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->x(Lam/sunrise/android/calendar/ui/event/add/c;)V

    .line 1349
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/y;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/y;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/lang/String;)V

    .line 1350
    return-void

    :cond_4
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_0

    :cond_5
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/a/d",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1298
    new-instance v0, Landroid/support/v4/a/c;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/y;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/event/add/z;->a:Landroid/net/Uri;

    sget-object v3, Lam/sunrise/android/calendar/ui/event/add/z;->b:[Ljava/lang/String;

    const-string v4, "connection_is_disconnected = ? AND connection_is_unavailable = ? AND calendar_is_writable = ?"

    sget-object v5, Lam/sunrise/android/calendar/ui/event/add/z;->c:[Ljava/lang/String;

    const-string v6, "connection_type ASC, connection_info ASC, calendar_priority ASC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1294
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/event/add/y;->a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/d",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1354
    return-void
.end method
