.class Lcom/buffalostudios/aneutils/notifier/LocalNotifier$Event;
.super Ljava/lang/Object;
.source "LocalNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buffalostudios/aneutils/notifier/LocalNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# static fields
.field static final LOCAL_MESSAGE_RECEIVED:Ljava/lang/String; = "LOCAL_MESSAGE_RECEIVED"

.field static final LOCAL_MESSAGE_SELECTED:Ljava/lang/String; = "LOCAL_MESSAGE_SELECTED"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
