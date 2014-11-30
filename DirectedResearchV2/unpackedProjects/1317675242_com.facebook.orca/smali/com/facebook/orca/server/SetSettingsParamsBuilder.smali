.class public Lcom/facebook/orca/server/SetSettingsParamsBuilder;
.super Ljava/lang/Object;
.source "SetSettingsParamsBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/facebook/orca/notify/NotificationSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/notify/NotificationSetting;)Lcom/facebook/orca/server/SetSettingsParamsBuilder;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/facebook/orca/server/SetSettingsParamsBuilder;->b:Lcom/facebook/orca/notify/NotificationSetting;

    .line 35
    return-object p0
.end method

.method public a(Z)Lcom/facebook/orca/server/SetSettingsParamsBuilder;
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/facebook/orca/server/SetSettingsParamsBuilder;->a:Z

    .line 26
    return-object p0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/facebook/orca/server/SetSettingsParamsBuilder;->a:Z

    return v0
.end method

.method public b()Lcom/facebook/orca/notify/NotificationSetting;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/server/SetSettingsParamsBuilder;->b:Lcom/facebook/orca/notify/NotificationSetting;

    return-object v0
.end method

.method public c()Lcom/facebook/orca/server/SetSettingsParams;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/facebook/orca/server/SetSettingsParams;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/SetSettingsParams;-><init>(Lcom/facebook/orca/server/SetSettingsParamsBuilder;)V

    return-object v0
.end method
