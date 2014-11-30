.class final Lcom/somo/apptimiser/SomoLogger$AndroidLogger;
.super Ljava/lang/Object;
.source "SomoLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AndroidLogger"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/somo/apptimiser/SomoLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 264
    new-instance v0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;

    sget-object v1, Lcom/somo/apptimiser/SomoApptimiser;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoLogger$AndroidLogger;->INSTANCE:Lcom/somo/apptimiser/SomoLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
