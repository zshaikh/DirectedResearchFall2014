.class public abstract Lcom/dolphin/browser/DolphinService/WebService/h;
.super Ljava/lang/Object;
.source "WebServiceConfiguration.java"


# static fields
.field private static e:Lcom/dolphin/browser/DolphinService/WebService/h;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sput-object p0, Lcom/dolphin/browser/DolphinService/WebService/h;->e:Lcom/dolphin/browser/DolphinService/WebService/h;

    .line 31
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/WebService/h;->a:Landroid/content/Context;

    .line 32
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/WebService/h;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public static j()Lcom/dolphin/browser/DolphinService/WebService/h;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/dolphin/browser/DolphinService/WebService/h;->e:Lcom/dolphin/browser/DolphinService/WebService/h;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    sget-object v0, Lcom/dolphin/browser/DolphinService/WebService/h;->e:Lcom/dolphin/browser/DolphinService/WebService/h;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method protected a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/DolphinService/WebService/h;->d:Ljava/lang/String;

    .line 40
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/dolphin/browser/DolphinService/WebService/h;->b:I

    .line 41
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/h;->c:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public k()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/dolphin/browser/DolphinService/WebService/h;->b:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/h;->d:Ljava/lang/String;

    return-object v0
.end method
