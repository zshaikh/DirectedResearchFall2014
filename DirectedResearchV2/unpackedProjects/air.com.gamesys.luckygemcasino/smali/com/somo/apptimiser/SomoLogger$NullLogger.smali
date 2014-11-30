.class final Lcom/somo/apptimiser/SomoLogger$NullLogger;
.super Ljava/lang/Object;
.source "SomoLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullLogger"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/somo/apptimiser/SomoLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Lcom/somo/apptimiser/SomoLogger$NullSomoLogger;

    sget-object v1, Lcom/somo/apptimiser/SomoApptimiser;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/somo/apptimiser/SomoLogger$NullSomoLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoLogger$NullLogger;->INSTANCE:Lcom/somo/apptimiser/SomoLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/somo/apptimiser/SomoLogger;
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/somo/apptimiser/SomoLogger$NullLogger;->INSTANCE:Lcom/somo/apptimiser/SomoLogger;

    return-object v0
.end method
