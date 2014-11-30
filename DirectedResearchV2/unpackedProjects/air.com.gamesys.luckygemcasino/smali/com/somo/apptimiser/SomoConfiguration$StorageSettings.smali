.class public Lcom/somo/apptimiser/SomoConfiguration$StorageSettings;
.super Ljava/lang/Object;
.source "SomoConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageSettings"
.end annotation


# instance fields
.field public final maxSize:J


# direct methods
.method private constructor <init>(J)V
    .locals 0
    .param p1, "maxSize"    # J

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-wide p1, p0, Lcom/somo/apptimiser/SomoConfiguration$StorageSettings;->maxSize:J

    .line 271
    return-void
.end method

.method synthetic constructor <init>(JLcom/somo/apptimiser/SomoConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # Lcom/somo/apptimiser/SomoConfiguration$1;

    .prologue
    .line 266
    invoke-direct {p0, p1, p2}, Lcom/somo/apptimiser/SomoConfiguration$StorageSettings;-><init>(J)V

    return-void
.end method
