.class public interface abstract Lcom/somo/apptimiser/SomoEventStorer;
.super Ljava/lang/Object;
.source "SomoEventStorer.java"


# static fields
.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INVALID_EVENT_ID:J = -0x1L


# virtual methods
.method public abstract addEvent(Landroid/content/ContentValues;)J
.end method

.method public abstract clear()I
.end method

.method public abstract close()V
.end method

.method public abstract getEvents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/somo/apptimiser/SomoEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxCapacity()J
.end method

.method public abstract removeEvent(J)V
.end method
