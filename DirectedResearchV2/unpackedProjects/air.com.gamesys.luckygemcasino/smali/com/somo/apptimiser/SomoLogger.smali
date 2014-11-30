.class abstract Lcom/somo/apptimiser/SomoLogger;
.super Ljava/lang/Object;
.source "SomoLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/somo/apptimiser/SomoLogger$NullLogger;,
        Lcom/somo/apptimiser/SomoLogger$AndroidLogger;,
        Lcom/somo/apptimiser/SomoLogger$NullSomoLogger;,
        Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;
    }
.end annotation


# instance fields
.field protected final tag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/somo/apptimiser/SomoLogger;->tag:Ljava/lang/String;

    .line 16
    return-void
.end method

.method static getLogger()Lcom/somo/apptimiser/SomoLogger;
    .locals 1

    .prologue
    .line 44
    # getter for: Lcom/somo/apptimiser/SomoLogger$NullLogger;->INSTANCE:Lcom/somo/apptimiser/SomoLogger;
    invoke-static {}, Lcom/somo/apptimiser/SomoLogger$NullLogger;->access$000()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract d(Ljava/lang/String;)I
.end method

.method abstract d(Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method varargs abstract d(Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method varargs abstract d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method abstract e(Ljava/lang/String;)I
.end method

.method abstract e(Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method varargs abstract e(Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method varargs abstract e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method abstract i(Ljava/lang/String;)I
.end method

.method abstract i(Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method varargs abstract i(Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method varargs abstract i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method abstract v(Ljava/lang/String;)I
.end method

.method abstract v(Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method varargs abstract v(Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method varargs abstract v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method abstract w(Ljava/lang/String;)I
.end method

.method abstract w(Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method varargs abstract w(Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method varargs abstract w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
.end method
