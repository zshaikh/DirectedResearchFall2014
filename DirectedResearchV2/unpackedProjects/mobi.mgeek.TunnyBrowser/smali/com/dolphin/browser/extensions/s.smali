.class public Lcom/dolphin/browser/extensions/s;
.super Lcom/dolphin/browser/extensions/a;
.source "FakeAddon.java"


# instance fields
.field protected final j:Ljava/lang/String;

.field private final k:Landroid/graphics/drawable/Drawable;

.field private final l:Landroid/graphics/drawable/Drawable;

.field private final m:Z

.field private final n:Z

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:I

.field private final r:Landroid/content/Intent;

.field private final s:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/pm/ApplicationInfo;)V
    .locals 10

    .prologue
    .line 205
    const-string v0, "name"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "icon"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/dolphin/browser/extensions/s;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v0, "package_name"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "description"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "long_description"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const-string v8, "1.0"

    move-object v0, p0

    move-object v1, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/dolphin/browser/extensions/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/res/Resources;)V

    .line 208
    const-string v0, "icon"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/dolphin/browser/extensions/s;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/s;->k:Landroid/graphics/drawable/Drawable;

    .line 209
    const-string v0, "addon_bar_icon"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/dolphin/browser/extensions/s;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/s;->l:Landroid/graphics/drawable/Drawable;

    .line 210
    const-string v0, "addon_bar_title"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/s;->j:Ljava/lang/String;

    .line 211
    const-string v0, "is_text_selection_addon"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/extensions/s;->m:Z

    .line 212
    const-string v0, "show_in_addon_bar"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/extensions/s;->n:Z

    .line 213
    const-string v0, "download_url"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/s;->o:Ljava/lang/String;

    .line 214
    const-string v0, "long_description"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/s;->p:Ljava/lang/String;

    .line 215
    const-string v0, "order"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/extensions/s;->q:I

    .line 216
    const-string v0, "application_name"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/s;->s:Ljava/lang/String;

    .line 217
    invoke-static {p1, p2, p3, p4, p5}, Lcom/dolphin/browser/extensions/s;->a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/pm/ApplicationInfo;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/s;->r:Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Lcom/dolphin/browser/extensions/s;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "download_url can not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/s;->o:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/extensions/s;->o:Ljava/lang/String;

    const-string v1, "market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "download_url only support http://... and market://..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/s;->y()V

    .line 225
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/pm/ApplicationInfo;)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 145
    const-string v0, "click_intent"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 146
    const/4 v0, 0x0

    .line 148
    if-eqz v1, :cond_2

    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 150
    invoke-virtual {v2, p2, v1, p4}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 152
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 153
    const/4 v3, 0x2

    if-ne v3, v1, :cond_0

    const-string v1, "intent"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 155
    invoke-static {p1, v2, v1}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 156
    const/high16 v0, 0x10200000

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 162
    :cond_1
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 167
    :cond_2
    :goto_0
    return-object v0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    :goto_1
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 164
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-static {}, Lcom/dolphin/browser/extensions/a/c;->a()Lcom/dolphin/browser/extensions/a/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/extensions/a/c;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 183
    :cond_0
    :goto_0
    return-object v0

    .line 177
    :cond_1
    const-string v1, "drawable"

    invoke-virtual {p0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 178
    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/s;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/extensions/s;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/extensions/s;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/extensions/s;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 337
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/s;->m()Ljava/lang/String;

    move-result-object v1

    .line 338
    iget-object v0, p0, Lcom/dolphin/browser/extensions/s;->p:Ljava/lang/String;

    .line 339
    iget-object v2, p0, Lcom/dolphin/browser/extensions/s;->p:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    sget v0, Lcom/dolphin/browser/core/R$string;->fake_addon_promotion_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/s;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "promotionaddon||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$string;->fake_addon_download:I

    new-instance v3, Lcom/dolphin/browser/extensions/v;

    invoke-direct {v3, p0, v2}, Lcom/dolphin/browser/extensions/v;-><init>(Lcom/dolphin/browser/extensions/s;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v3, Lcom/dolphin/browser/extensions/u;

    invoke-direct {v3, p0, v2}, Lcom/dolphin/browser/extensions/u;-><init>(Lcom/dolphin/browser/extensions/s;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/extensions/t;

    invoke-direct {v1, p0, v2}, Lcom/dolphin/browser/extensions/t;-><init>(Lcom/dolphin/browser/extensions/s;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/extensions/s;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/dolphin/browser/extensions/s;->n:Z

    return v0
.end method

.method private y()V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/extensions/s;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 230
    sget-object v0, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    iput-object v0, p0, Lcom/dolphin/browser/extensions/s;->b:Lcom/dolphin/browser/extensions/c;

    .line 231
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 232
    sget-object v1, Lcom/dolphin/browser/extensions/IBaseExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    iget-boolean v1, p0, Lcom/dolphin/browser/extensions/s;->n:Z

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "IAddonBarExtention"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_0
    iget-boolean v1, p0, Lcom/dolphin/browser/extensions/s;->m:Z

    if-eqz v1, :cond_1

    .line 237
    sget-object v1, Lcom/dolphin/browser/extensions/ISelectionExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_1
    new-instance v1, Lcom/dolphin/browser/extensions/n;

    new-instance v2, Lcom/dolphin/browser/extensions/w;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/dolphin/browser/extensions/w;-><init>(Lcom/dolphin/browser/extensions/s;Lcom/dolphin/browser/extensions/t;)V

    invoke-direct {v1, v2, p0, v0}, Lcom/dolphin/browser/extensions/n;-><init>(Ljava/lang/Object;Lcom/dolphin/browser/extensions/a;Ljava/util/Set;)V

    .line 240
    iget-object v0, p0, Lcom/dolphin/browser/extensions/s;->b:Lcom/dolphin/browser/extensions/c;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/n;->a(Lcom/dolphin/browser/extensions/c;)V

    .line 241
    iget v0, p0, Lcom/dolphin/browser/extensions/s;->q:I

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/n;->a(I)V

    .line 242
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/s;->t()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/s;->s()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/n;->e(Z)V

    .line 243
    iget-object v0, p0, Lcom/dolphin/browser/extensions/s;->e:Ljava/util/HashMap;

    const-class v2, Lcom/dolphin/browser/extensions/w;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void

    .line 242
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Z)V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 309
    iget-object v0, p0, Lcom/dolphin/browser/extensions/s;->r:Landroid/content/Intent;

    .line 311
    const-string v1, "addon bar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "promotionaddon||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/extensions/s;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "clicked"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/s;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/extensions/s;->h:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/dolphin/browser/extensions/s;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 323
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 324
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 333
    :goto_1
    return-void

    .line 326
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/s;->c(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 331
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/s;->c(Landroid/content/Context;)V

    goto :goto_1

    .line 317
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/extensions/s;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/extensions/s;->l:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 249
    :cond_0
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public t()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 265
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->getPromotedAddonApplicationName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/extensions/s;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->getPromotedAppApplicationName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/extensions/s;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dolphin/browser/extensions/s;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/extensions/s;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/bw;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 2

    .prologue
    .line 276
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPreInstallAddonApplicationName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/s;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPreInstallAppApplicationName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/s;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    const/4 v0, 0x1

    .line 280
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Z
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPromotedAddonApplicationName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/s;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPromotedAppApplicationName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/s;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPreInstallAddonApplicationName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/s;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPreInstallAppApplicationName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/s;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()Z
    .locals 2

    .prologue
    .line 294
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPromotedAppApplicationName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/s;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPreInstallAppApplicationName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/s;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    :cond_0
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()Z
    .locals 2

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/s;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/extensions/s;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/dolphin/browser/extensions/s;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/bw;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
