.class public Lcom/appsponsor/nativeExtensions/appsponsorsdk/ResourceFinder;
.super Ljava/lang/Object;


# static fields
.field public static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/ResourceFinder;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/ResourceFinder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/appsponsor/nativeExtensions/appsponsorsdk/ResourceFinder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
