.class Lcom/buffalostudios/aneutils/notifier/PushNotifier$Event;
.super Ljava/lang/Object;
.source "PushNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buffalostudios/aneutils/notifier/PushNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# static fields
.field static final GCM_ALREADY_REGISTERED:Ljava/lang/String; = "GCM_ALREADY_REGISTERED"

.field static final GCM_ERROR:Ljava/lang/String; = "GCM_ERROR"

.field static final GCM_MESSAGE_RECEIVED:Ljava/lang/String; = "GCM_MESSAGE_RECEIVED"

.field static final GCM_MESSAGE_SELECTED:Ljava/lang/String; = "GCM_MESSAGE_SELECTED"

.field static final GCM_REGISTERED:Ljava/lang/String; = "GCM_REGISTERED"

.field static final GCM_UNREGISTERED:Ljava/lang/String; = "GCM_UNREGISTERED"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
