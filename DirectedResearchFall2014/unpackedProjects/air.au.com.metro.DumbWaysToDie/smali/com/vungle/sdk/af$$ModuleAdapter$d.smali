.class public final Lcom/vungle/sdk/af$$ModuleAdapter$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/sdk/aq",
        "<",
        "Landroid/telephony/TelephonyManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Landroid/telephony/TelephonyManager;",
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

    .line 129
    const-string v0, "android.telephony.TelephonyManager"

    const/4 v1, 0x0

    const-string v2, "com.vungle.sdk.inject.PublisherModule.provideTelephonyManager()"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/vungle/sdk/aq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 130
    iput-object p1, p0, Lcom/vungle/sdk/af$$ModuleAdapter$d;->e:Lcom/vungle/sdk/af;

    .line 131
    invoke-virtual {p0, v3}, Lcom/vungle/sdk/af$$ModuleAdapter$d;->c(Z)V

    .line 132
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/vungle/sdk/af$$ModuleAdapter$d;->e:Lcom/vungle/sdk/af;

    iget-object v0, v0, Lcom/vungle/sdk/af;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method
