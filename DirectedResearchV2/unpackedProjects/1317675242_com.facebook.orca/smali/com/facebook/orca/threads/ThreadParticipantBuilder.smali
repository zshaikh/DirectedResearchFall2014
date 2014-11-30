.class public Lcom/facebook/orca/threads/ThreadParticipantBuilder;
.super Ljava/lang/Object;
.source "ThreadParticipantBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Lcom/facebook/orca/threads/ParticipantInfo;

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/orca/notify/NotificationSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public a(Lcom/facebook/orca/notify/NotificationSetting;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->c:Lcom/facebook/orca/notify/NotificationSetting;

    .line 45
    return-object p0
.end method

.method public a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 27
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->b:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/facebook/orca/notify/NotificationSetting;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->c:Lcom/facebook/orca/notify/NotificationSetting;

    return-object v0
.end method

.method public d()Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/facebook/orca/threads/ThreadParticipant;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threads/ThreadParticipant;-><init>(Lcom/facebook/orca/threads/ThreadParticipantBuilder;)V

    return-object v0
.end method
