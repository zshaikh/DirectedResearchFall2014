.class Lcom/dolphin/browser/message/model/d;
.super Lcom/dolphin/browser/message/model/a;
.source "Command.java"


# instance fields
.field private a:[Lcom/dolphin/browser/message/model/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 301
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/message/model/a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 302
    const-string v1, "title"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/message/model/d;->b:Ljava/lang/String;

    .line 303
    const-string v1, "description"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/message/model/d;->c:Ljava/lang/String;

    .line 304
    const-string v1, "cancelable"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dolphin/browser/message/model/d;->d:Z

    .line 305
    const-string v1, "buttons"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 306
    if-nez v1, :cond_0

    .line 307
    new-array v0, v0, [Lcom/dolphin/browser/message/model/b;

    iput-object v0, p0, Lcom/dolphin/browser/message/model/d;->a:[Lcom/dolphin/browser/message/model/b;

    .line 315
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Lcom/dolphin/browser/message/model/b;

    .line 310
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 311
    new-instance v3, Lcom/dolphin/browser/message/model/b;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/dolphin/browser/message/model/b;-><init>(Lorg/json/JSONObject;)V

    aput-object v3, v2, v0

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 313
    :cond_1
    iput-object v2, p0, Lcom/dolphin/browser/message/model/d;->a:[Lcom/dolphin/browser/message/model/b;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 319
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/dolphin/browser/message/model/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 321
    iget-object v1, p0, Lcom/dolphin/browser/message/model/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 322
    iget-boolean v1, p0, Lcom/dolphin/browser/message/model/d;->d:Z

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 325
    iget-object v1, p0, Lcom/dolphin/browser/message/model/d;->a:[Lcom/dolphin/browser/message/model/b;

    array-length v1, v1

    .line 326
    iget-object v2, p0, Lcom/dolphin/browser/message/model/d;->a:[Lcom/dolphin/browser/message/model/b;

    .line 329
    const/4 v3, 0x3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 330
    packed-switch v1, :pswitch_data_0

    .line 343
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 344
    new-instance v1, Lcom/dolphin/browser/message/model/e;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/message/model/e;-><init>(Lcom/dolphin/browser/message/model/d;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 351
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 352
    return-void

    .line 332
    :pswitch_0
    const/4 v1, 0x2

    aget-object v1, v2, v1

    .line 333
    invoke-virtual {v1}, Lcom/dolphin/browser/message/model/b;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/dolphin/browser/message/model/c;

    invoke-direct {v4, p1, v1}, Lcom/dolphin/browser/message/model/c;-><init>(Landroid/content/Context;Lcom/dolphin/browser/message/model/b;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    :pswitch_1
    const/4 v1, 0x1

    aget-object v1, v2, v1

    .line 336
    invoke-virtual {v1}, Lcom/dolphin/browser/message/model/b;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/dolphin/browser/message/model/c;

    invoke-direct {v4, p1, v1}, Lcom/dolphin/browser/message/model/c;-><init>(Landroid/content/Context;Lcom/dolphin/browser/message/model/b;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 338
    :pswitch_2
    const/4 v1, 0x0

    aget-object v1, v2, v1

    .line 339
    invoke-virtual {v1}, Lcom/dolphin/browser/message/model/b;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dolphin/browser/message/model/c;

    invoke-direct {v3, p1, v1}, Lcom/dolphin/browser/message/model/c;-><init>(Landroid/content/Context;Lcom/dolphin/browser/message/model/b;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
