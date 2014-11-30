.class public Lcom/fusepowered/m2/m2l/factories/AdFetchTaskFactory;
.super Ljava/lang/Object;
.source "AdFetchTaskFactory.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/m2l/factories/AdFetchTaskFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/fusepowered/m2/m2l/factories/AdFetchTaskFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/factories/AdFetchTaskFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/factories/AdFetchTaskFactory;->instance:Lcom/fusepowered/m2/m2l/factories/AdFetchTaskFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/fusepowered/m2/m2l/TaskTracker;Lcom/fusepowered/m2/m2l/AdViewController;Ljava/lang/String;I)Lcom/fusepowered/m2/m2l/AdFetchTask;
    .locals 1
    .param p0, "taskTracker"    # Lcom/fusepowered/m2/m2l/TaskTracker;
    .param p1, "adViewController"    # Lcom/fusepowered/m2/m2l/AdViewController;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "timeoutMilliseconds"    # I

    .prologue
    .line 48
    sget-object v0, Lcom/fusepowered/m2/m2l/factories/AdFetchTaskFactory;->instance:Lcom/fusepowered/m2/m2l/factories/AdFetchTaskFactory;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fusepowered/m2/m2l/factories/AdFetchTaskFactory;->internalCreate(Lcom/fusepowered/m2/m2l/TaskTracker;Lcom/fusepowered/m2/m2l/AdViewController;Ljava/lang/String;I)Lcom/fusepowered/m2/m2l/AdFetchTask;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/m2l/factories/AdFetchTaskFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/m2l/factories/AdFetchTaskFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    sput-object p0, Lcom/fusepowered/m2/m2l/factories/AdFetchTaskFactory;->instance:Lcom/fusepowered/m2/m2l/factories/AdFetchTaskFactory;

    .line 45
    return-void
.end method


# virtual methods
.method protected internalCreate(Lcom/fusepowered/m2/m2l/TaskTracker;Lcom/fusepowered/m2/m2l/AdViewController;Ljava/lang/String;I)Lcom/fusepowered/m2/m2l/AdFetchTask;
    .locals 1
    .param p1, "taskTracker"    # Lcom/fusepowered/m2/m2l/TaskTracker;
    .param p2, "adViewController"    # Lcom/fusepowered/m2/m2l/AdViewController;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "timeoutMilliseconds"    # I

    .prologue
    .line 52
    new-instance v0, Lcom/fusepowered/m2/m2l/AdFetchTask;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/fusepowered/m2/m2l/AdFetchTask;-><init>(Lcom/fusepowered/m2/m2l/TaskTracker;Lcom/fusepowered/m2/m2l/AdViewController;Ljava/lang/String;I)V

    return-object v0
.end method
