.class Lam/sunrise/android/calendar/ui/settings/t;
.super Landroid/os/AsyncTask;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lam/sunrise/android/calendar/ui/settings/b/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/settings/SettingsActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/settings/SettingsActivity;)V
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 307
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/t;->a:Ljava/lang/ref/WeakReference;

    .line 308
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/t;->b:Landroid/content/ContentResolver;

    .line 309
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/settings/b/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 314
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/t;->b:Landroid/content/ContentResolver;

    sget-object v1, Lam/sunrise/android/calendar/provider/h;->a:Landroid/net/Uri;

    sget-object v2, Lam/sunrise/android/calendar/ui/settings/u;->a:[Ljava/lang/String;

    const-string v3, "connection_type != ? AND connection_type != ?"

    sget-object v4, Lam/sunrise/android/calendar/ui/settings/u;->b:[Ljava/lang/String;

    const-string v5, "connection_type, connection_info"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 319
    if-eqz v2, :cond_2

    .line 320
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    const-string v0, "connection_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 322
    const-string v0, "connection_info"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 323
    const-string v0, "connection_type"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 324
    const-string v0, "connection_is_disconnected"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 325
    const-string v0, "connection_is_unavailable"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 326
    const/4 v0, 0x0

    move v1, v0

    .line 328
    :goto_0
    new-instance v9, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    invoke-direct {v9}, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;-><init>()V

    .line 329
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->a:Ljava/lang/String;

    .line 330
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->d:Ljava/lang/String;

    .line 331
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->b:Ljava/lang/String;

    .line 332
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v9, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->c:Z

    .line 333
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v9, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->e:Z

    .line 335
    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/b/f;->a()Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v10

    .line 336
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 337
    const-string v0, "am.sunrise.android.calendar.ui.settings.action.ACCOUNT_INFO"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->g()Ljava/util/HashMap;

    move-result-object v0

    iget-object v12, v9, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 340
    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->g()Ljava/util/HashMap;

    move-result-object v0

    iget-object v12, v9, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/s;

    .line 341
    iget v12, v0, Lam/sunrise/android/calendar/ui/settings/s;->a:I

    invoke-virtual {v10, v12}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    .line 342
    iget v12, v0, Lam/sunrise/android/calendar/ui/settings/s;->b:I

    invoke-virtual {v10, v12}, Lam/sunrise/android/calendar/ui/settings/b/f;->b(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    .line 343
    const-string v12, "am.sunrise.android.calendar.ui.settings.extra.PRETTY_ACCOUNT_TYPE_ID"

    iget v0, v0, Lam/sunrise/android/calendar/ui/settings/s;->b:I

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    :goto_3
    const-string v0, "am.sunrise.android.calendar.ui.settings.extra.CONNECTION_INFO"

    invoke-virtual {v11, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 350
    const-class v0, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;

    invoke-virtual {v10, v11, v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Landroid/content/Intent;Ljava/lang/Class;)Lam/sunrise/android/calendar/ui/settings/b/f;

    .line 352
    iget-boolean v0, v9, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, v9, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->e:Z

    if-eqz v0, :cond_6

    .line 353
    :cond_0
    const v0, 0x7f0f0090

    invoke-virtual {v10, v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->c(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    .line 358
    :goto_4
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    add-int/lit8 v0, v1, 0x1

    .line 361
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 363
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_2
    return-object v6

    .line 332
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 333
    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    .line 345
    :cond_5
    iget-object v0, v9, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->b:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Ljava/lang/CharSequence;)Lam/sunrise/android/calendar/ui/settings/b/f;

    .line 346
    const-string v0, "am.sunrise.android.calendar.ui.settings.extra.PRETTY_ACCOUNT_TYPE_STRING"

    iget-object v12, v9, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->b:Ljava/lang/String;

    invoke-virtual {v11, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 355
    :cond_6
    iget-object v0, v9, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->d:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->b(Ljava/lang/CharSequence;)Lam/sunrise/android/calendar/ui/settings/b/f;

    goto :goto_4

    :cond_7
    move v1, v0

    goto/16 :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/settings/b/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/t;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;

    .line 372
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    invoke-static {v0, p1}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->a(Lam/sunrise/android/calendar/ui/settings/SettingsActivity;Ljava/util/ArrayList;)V

    .line 375
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/settings/t;->a([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 302
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/settings/t;->a(Ljava/util/ArrayList;)V

    return-void
.end method
