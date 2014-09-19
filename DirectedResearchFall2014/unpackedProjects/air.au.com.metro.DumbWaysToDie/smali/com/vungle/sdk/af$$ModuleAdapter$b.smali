.class public final Lcom/vungle/sdk/af$$ModuleAdapter$b;
.super Lcom/vungle/sdk/aq;
.source "vungle"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/af$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/sdk/aq",
        "<",
        "Landroid/content/Context;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lcom/vungle/sdk/af;


# direct methods
.method public constructor <init>(Lcom/vungle/sdk/af;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 75
    const-string v0, "android.content.Context"

    const/4 v1, 0x0

    const-string v2, "com.vungle.sdk.inject.PublisherModule.provideContext()"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/vungle/sdk/aq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 76
    iput-object p1, p0, Lcom/vungle/sdk/af$$ModuleAdapter$b;->e:Lcom/vungle/sdk/af;

    .line 77
    invoke-virtual {p0, v3}, Lcom/vungle/sdk/af$$ModuleAdapter$b;->c(Z)V

    .line 78
    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vungle/sdk/af$$ModuleAdapter$b;->e:Lcom/vungle/sdk/af;

    iget-object v0, v0, Lcom/vungle/sdk/af;->a:Landroid/content/Context;

    return-object v0
.end method
