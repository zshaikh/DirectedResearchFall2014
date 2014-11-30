.class Lcom/milkmangames/extensions/android/BuffaloExtensionContext$PendingFlashEvent;
.super Ljava/lang/Object;
.source "BuffaloExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milkmangames/extensions/android/BuffaloExtensionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingFlashEvent"
.end annotation


# instance fields
.field public eventData:Ljava/lang/String;

.field public eventId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "eventData"    # Ljava/lang/String;

    .prologue
    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    iput-object p1, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$PendingFlashEvent;->eventId:Ljava/lang/String;

    .line 642
    iput-object p2, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$PendingFlashEvent;->eventData:Ljava/lang/String;

    .line 643
    return-void
.end method
