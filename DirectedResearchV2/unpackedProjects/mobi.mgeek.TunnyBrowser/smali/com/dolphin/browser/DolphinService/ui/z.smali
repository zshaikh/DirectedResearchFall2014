.class Lcom/dolphin/browser/DolphinService/ui/z;
.super Lcom/dolphin/browser/util/f;
.source "DeviceManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/z;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 454
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/f;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 443
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/z;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/z;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->e(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)V

    .line 449
    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/z;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->a(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Z)V

    .line 461
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/z;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->a(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Lcom/dolphin/browser/util/f;)Lcom/dolphin/browser/util/f;

    .line 462
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 443
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/z;->a(Ljava/lang/Boolean;)V

    return-void
.end method
