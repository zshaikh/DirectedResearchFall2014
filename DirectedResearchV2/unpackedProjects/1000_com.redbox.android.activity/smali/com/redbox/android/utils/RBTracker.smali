.class public Lcom/redbox/android/utils/RBTracker;
.super Ljava/lang/Object;
.source "RBTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "----------------------Analytics : logged "

.field private static instance:Lcom/redbox/android/utils/RBTracker;

.field private static omniture:Lcom/omniture/android/AppMeasurement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/redbox/android/utils/RBTracker;->instance:Lcom/redbox/android/utils/RBTracker;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/redbox/android/utils/RBTracker;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->instance:Lcom/redbox/android/utils/RBTracker;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/redbox/android/utils/RBTracker;

    invoke-direct {v0}, Lcom/redbox/android/utils/RBTracker;-><init>()V

    sput-object v0, Lcom/redbox/android/utils/RBTracker;->instance:Lcom/redbox/android/utils/RBTracker;

    .line 38
    :cond_0
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->instance:Lcom/redbox/android/utils/RBTracker;

    return-object v0
.end method


# virtual methods
.method public setApplication(Landroid/app/Application;)V
    .locals 3
    .param p1, "currentApplication"    # Landroid/app/Application;

    .prologue
    const/4 v2, 0x1

    .line 44
    new-instance v0, Lcom/omniture/android/AppMeasurement;

    invoke-direct {v0, p1}, Lcom/omniture/android/AppMeasurement;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    .line 45
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    iput-boolean v2, v0, Lcom/omniture/android/AppMeasurement;->debugTracking:Z

    .line 46
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    const-string v1, "rboxandroidapp"

    iput-object v1, v0, Lcom/omniture/android/AppMeasurement;->account:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    iput-boolean v2, v0, Lcom/omniture/android/AppMeasurement;->ssl:Z

    .line 48
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    const-string v1, "122"

    iput-object v1, v0, Lcom/omniture/android/AppMeasurement;->dc:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public trackCartAddition(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 103
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    const-string v1, "event34"

    iput-object v1, v0, Lcom/omniture/android/AppMeasurement;->events:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    invoke-virtual {v0}, Lcom/omniture/android/AppMeasurement;->track()V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----------------------Analytics : logged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    iget-object v1, v1, Lcom/omniture/android/AppMeasurement;->events:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public trackCreateAccount(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 84
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    const-string v1, "event32"

    iput-object v1, v0, Lcom/omniture/android/AppMeasurement;->events:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    invoke-virtual {v0}, Lcom/omniture/android/AppMeasurement;->track()V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----------------------Analytics : logged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    iget-object v1, v1, Lcom/omniture/android/AppMeasurement;->events:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public trackFindRedbox(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 94
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    const-string v1, "event33"

    iput-object v1, v0, Lcom/omniture/android/AppMeasurement;->events:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    invoke-virtual {v0}, Lcom/omniture/android/AppMeasurement;->track()V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----------------------Analytics : logged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    iget-object v1, v1, Lcom/omniture/android/AppMeasurement;->events:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public trackMovieDetail(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 74
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    const-string v1, "event36"

    iput-object v1, v0, Lcom/omniture/android/AppMeasurement;->events:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    invoke-virtual {v0}, Lcom/omniture/android/AppMeasurement;->track()V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----------------------Analytics : logged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    iget-object v1, v1, Lcom/omniture/android/AppMeasurement;->events:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public trackReservationConfirmation(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 113
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    const-string v1, "event35"

    iput-object v1, v0, Lcom/omniture/android/AppMeasurement;->events:Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    invoke-virtual {v0}, Lcom/omniture/android/AppMeasurement;->track()V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----------------------Analytics : logged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    iget-object v1, v1, Lcom/omniture/android/AppMeasurement;->events:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public trackSpash(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 61
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    const-string v1, "event31"

    iput-object v1, v0, Lcom/omniture/android/AppMeasurement;->events:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    invoke-virtual {v0}, Lcom/omniture/android/AppMeasurement;->track()V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----------------------Analytics : logged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/redbox/android/utils/RBTracker;->omniture:Lcom/omniture/android/AppMeasurement;

    iget-object v1, v1, Lcom/omniture/android/AppMeasurement;->events:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    return-void
.end method
