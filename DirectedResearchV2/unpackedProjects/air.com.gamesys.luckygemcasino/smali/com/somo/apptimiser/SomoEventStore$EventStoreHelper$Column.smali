.class final Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;
.super Ljava/lang/Object;
.source "SomoEventStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Column"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 314
    const-string v0, "text"

    invoke-direct {p0, p1, v0}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/somo/apptimiser/SomoEventStore$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/somo/apptimiser/SomoEventStore$1;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;->name:Ljava/lang/String;

    .line 318
    iput-object p2, p0, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;->type:Ljava/lang/String;

    .line 319
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/somo/apptimiser/SomoEventStore$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/somo/apptimiser/SomoEventStore$1;

    .prologue
    .line 310
    invoke-direct {p0, p1, p2}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;->name:Ljava/lang/String;

    return-object v0
.end method
