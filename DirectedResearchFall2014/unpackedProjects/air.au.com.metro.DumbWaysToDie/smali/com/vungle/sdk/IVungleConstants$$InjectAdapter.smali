.class public final Lcom/vungle/sdk/IVungleConstants$$InjectAdapter;
.super Lcom/vungle/sdk/aq;
.source "vungle"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/sdk/aq",
        "<",
        "Lcom/vungle/sdk/IVungleConstants;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/sdk/IVungleConstants;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 19
    const-string v0, "com.vungle.sdk.IVungleConstants"

    const-string v1, "members/com.vungle.sdk.IVungleConstants"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/sdk/IVungleConstants;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/vungle/sdk/aq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 20
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/vungle/sdk/IVungleConstants;

    invoke-direct {v0}, Lcom/vungle/sdk/IVungleConstants;-><init>()V

    return-object v0
.end method
