.class public Lcom/fusepowered/m2/m2l/factories/VastVideoDownloadTaskFactory;
.super Ljava/lang/Object;
.source "VastVideoDownloadTaskFactory.java"


# static fields
.field private static instance:Lcom/fusepowered/m2/m2l/factories/VastVideoDownloadTaskFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/fusepowered/m2/m2l/factories/VastVideoDownloadTaskFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/factories/VastVideoDownloadTaskFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/factories/VastVideoDownloadTaskFactory;->instance:Lcom/fusepowered/m2/m2l/factories/VastVideoDownloadTaskFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;Lcom/fusepowered/m2/m2l/DiskLruCache;)Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;
    .locals 1
    .param p0, "onDownloadCompleteListener"    # Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;
    .param p1, "diskLruCache"    # Lcom/fusepowered/m2/m2l/DiskLruCache;

    .prologue
    .line 49
    sget-object v0, Lcom/fusepowered/m2/m2l/factories/VastVideoDownloadTaskFactory;->instance:Lcom/fusepowered/m2/m2l/factories/VastVideoDownloadTaskFactory;

    invoke-virtual {v0, p0, p1}, Lcom/fusepowered/m2/m2l/factories/VastVideoDownloadTaskFactory;->internalCreate(Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;Lcom/fusepowered/m2/m2l/DiskLruCache;)Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/m2l/factories/VastVideoDownloadTaskFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/m2l/factories/VastVideoDownloadTaskFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    sput-object p0, Lcom/fusepowered/m2/m2l/factories/VastVideoDownloadTaskFactory;->instance:Lcom/fusepowered/m2/m2l/factories/VastVideoDownloadTaskFactory;

    .line 46
    return-void
.end method


# virtual methods
.method protected internalCreate(Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;Lcom/fusepowered/m2/m2l/DiskLruCache;)Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;
    .locals 1
    .param p1, "onDownloadCompleteListener"    # Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;
    .param p2, "diskLruCache"    # Lcom/fusepowered/m2/m2l/DiskLruCache;

    .prologue
    .line 53
    new-instance v0, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;

    invoke-direct {v0, p1, p2}, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;-><init>(Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;Lcom/fusepowered/m2/m2l/DiskLruCache;)V

    return-object v0
.end method
