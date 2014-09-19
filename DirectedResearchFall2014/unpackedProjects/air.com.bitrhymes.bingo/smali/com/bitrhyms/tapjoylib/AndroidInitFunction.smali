.class public Lcom/bitrhyms/tapjoylib/AndroidInitFunction;
.super Ljava/lang/Object;
.source "AndroidInitFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .parameter "context"
    .parameter "args"

    .prologue
    .line 11
    move-object v0, p1

    check-cast v0, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;

    move-object v2, v0

    .line 12
    .local v2, adec:Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;
    invoke-static {p1}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->setFREContext(Lcom/adobe/fre/FREContext;)V

    .line 13
    invoke-virtual {v2}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 14
    .local v1, activity:Landroid/app/Activity;
    iput-object v1, v2, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->activity:Landroid/app/Activity;

    .line 15
    const/4 v3, 0x0

    return-object v3
.end method
