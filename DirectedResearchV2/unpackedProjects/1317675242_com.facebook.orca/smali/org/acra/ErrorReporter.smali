.class public Lorg/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final APPROVED_SUFFIX:Ljava/lang/String; = "-approved"

.field static final EXTRA_REPORT_FILE_NAME:Ljava/lang/String; = "REPORT_FILE_NAME"

.field private static final MAX_SEND_REPORTS:I = 0x5

.field public static final REPORTFILE_EXTENSION:Ljava/lang/String; = ".stacktrace"

.field static final SILENT_SUFFIX:Ljava/lang/String;

.field private static enabled:Z

.field private static mContext:Landroid/content/Context;

.field private static mCrashProperties:Lorg/acra/CrashReportData;

.field private static mInstanceSingleton:Lorg/acra/ErrorReporter;

.field private static mReportSenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/acra/sender/ReportSender;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCustomParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mInitialConfiguration:Ljava/lang/String;

.field private mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lorg/acra/ErrorReporter;->enabled:Z

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Lorg/acra/CrashReportData;

    invoke-direct {v0}, Lorg/acra/CrashReportData;-><init>()V

    sput-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/ErrorReporter;->SILENT_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mCustomParameters:Ljava/util/Map;

    .line 239
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    invoke-static {p0, p1, p2, p3}, Lorg/acra/ErrorReporter;->addUserDataToReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addUserDataToReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1192
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add user comment to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1195
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 1196
    new-instance v1, Lorg/acra/CrashReportData;

    invoke-direct {v1}, Lorg/acra/CrashReportData;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/InvalidPropertiesFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1198
    :try_start_1
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Loading Properties report to insert user comment."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-virtual {v1, v0}, Lorg/acra/CrashReportData;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1201
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1203
    sget-object v0, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    invoke-virtual {v1, v0, p2}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v0, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    if-nez p3, :cond_1

    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v0, v2}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    invoke-static {p1, v1}, Lorg/acra/ErrorReporter;->saveCrashReportFile(Ljava/lang/String;Lorg/acra/CrashReportData;)Ljava/lang/String;

    .line 1215
    :cond_0
    :goto_1
    return-void

    .line 1201
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/InvalidPropertiesFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "User comment not added: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    move-object v2, p3

    .line 1204
    goto :goto_0

    .line 1208
    :catch_1
    move-exception v0

    .line 1209
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "User comment not added: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1210
    :catch_2
    move-exception v0

    .line 1211
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "User comment not added: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private containsOnlySilentOrApprovedReports([Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1142
    array-length v0, p1

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1143
    invoke-direct {p0, v2}, Lorg/acra/ErrorReporter;->isApproved(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v3

    .line 1147
    :goto_1
    return v0

    .line 1142
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1147
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private createCustomInfoString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 324
    const-string v0, ""

    .line 325
    iget-object v1, p0, Lorg/acra/ErrorReporter;->mCustomParameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    .line 326
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    iget-object v1, p0, Lorg/acra/ErrorReporter;->mCustomParameters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 330
    goto :goto_0

    .line 331
    :cond_0
    return-object v3
.end method

.method private deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 992
    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 993
    if-nez v0, :cond_0

    .line 994
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not deleted error report : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_0
    return-void
.end method

.method private deletePendingReports(ZZI)V
    .locals 5

    .prologue
    .line 1104
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->getCrashReportFilesList()[Ljava/lang/String;

    move-result-object v0

    .line 1105
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1106
    if-eqz v0, :cond_3

    .line 1109
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    sub-int/2addr v2, p3

    if-ge v1, v2, :cond_3

    .line 1110
    aget-object v2, v0, v1

    .line 1111
    invoke-direct {p0, v2}, Lorg/acra/ErrorReporter;->isApproved(Ljava/lang/String;)Z

    move-result v3

    .line 1112
    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-nez v3, :cond_2

    if-eqz p2, :cond_2

    .line 1113
    :cond_1
    new-instance v3, Ljava/io/File;

    sget-object v4, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1109
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1117
    :cond_3
    return-void
.end method

.method private static getAvailableInternalMemorySize()J
    .locals 4

    .prologue
    .line 374
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 375
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 377
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 378
    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getInstance()Lorg/acra/ErrorReporter;
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lorg/acra/ErrorReporter;->mInstanceSingleton:Lorg/acra/ErrorReporter;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lorg/acra/ErrorReporter;

    invoke-direct {v0}, Lorg/acra/ErrorReporter;-><init>()V

    sput-object v0, Lorg/acra/ErrorReporter;->mInstanceSingleton:Lorg/acra/ErrorReporter;

    .line 343
    :cond_0
    sget-object v0, Lorg/acra/ErrorReporter;->mInstanceSingleton:Lorg/acra/ErrorReporter;

    return-object v0
.end method

.method private getLatestNonSilentReport([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1057
    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    .line 1058
    array-length v0, p1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_1

    .line 1059
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lorg/acra/ErrorReporter;->isSilent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1060
    aget-object v0, p1, v0

    .line 1066
    :goto_1
    return-object v0

    .line 1058
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1064
    :cond_1
    array-length v0, p1

    sub-int/2addr v0, v2

    aget-object v0, p1, v0

    goto :goto_1

    .line 1066
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getTotalInternalMemorySize()J
    .locals 4

    .prologue
    .line 388
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 389
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 391
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    .line 392
    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private isApproved(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1173
    invoke-direct {p0, p1}, Lorg/acra/ErrorReporter;->isSilent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-approved"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSilent(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1157
    sget-object v0, Lorg/acra/ErrorReporter;->SILENT_SUFFIX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private loadCrashReport(Landroid/content/Context;Ljava/lang/String;)Lorg/acra/CrashReportData;
    .locals 2

    .prologue
    .line 980
    new-instance v0, Lorg/acra/CrashReportData;

    invoke-direct {v0}, Lorg/acra/CrashReportData;-><init>()V

    .line 981
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 984
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/acra/CrashReportData;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 988
    return-object v0

    .line 986
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method

.method private retrieveCrashData(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 403
    :try_start_0
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v0

    .line 404
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->customReportContent()[Lorg/acra/ReportField;

    move-result-object v1

    .line 405
    array-length v2, v1

    if-nez v2, :cond_23

    .line 406
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 407
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->DEFAULT_REPORT_FIELDS:[Lorg/acra/ReportField;

    .line 412
    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 414
    invoke-static {}, Lorg/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 417
    sget-object v0, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v3, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_1
    sget-object v0, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v3, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/DumpSysCollector;->collectMemInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 429
    if-eqz v3, :cond_7

    .line 430
    const-string v0, "acra.syslog.enable"

    const/4 v4, 0x1

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "android.permission.READ_LOGS"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 432
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "READ_LOGS granted! ACRA can include LogCat and DropBox data."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    sget-object v0, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 434
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v4, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    const/4 v5, 0x0

    invoke-static {v5}, Lorg/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_3
    sget-object v0, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 437
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v4, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    const-string v5, "events"

    invoke-static {v5}, Lorg/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_4
    sget-object v0, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 440
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v4, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    const-string v5, "radio"

    invoke-static {v5}, Lorg/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_5
    sget-object v0, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 443
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v4, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    sget-object v5, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v6

    invoke-interface {v6}, Lorg/acra/annotation/ReportsCrashes;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/acra/DropBoxCollector;->read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_6
    :goto_1
    sget-object v0, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "acra.deviceid.enable"

    const/4 v4, 0x1

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 454
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 455
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_7

    .line 457
    sget-object v4, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v5, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    invoke-virtual {v4, v5, v0}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_7
    sget-object v0, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 464
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v4, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    sget-object v5, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/acra/util/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_8
    sget-object v0, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 469
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v4, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    iget-object v5, p0, Lorg/acra/ErrorReporter;->mInitialConfiguration:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_9
    sget-object v0, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 472
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 473
    sget-object v4, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v5, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    invoke-static {v0}, Lorg/acra/ConfigurationInspector;->toString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_22

    .line 480
    sget-object v3, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 481
    sget-object v3, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v4, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_b
    sget-object v3, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 484
    sget-object v3, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v4, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v5, :cond_21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v4, v0}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_c
    :goto_3
    sget-object v0, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 493
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v3, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_d
    sget-object v0, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 498
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v3, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    const-class v4, Landroid/os/Build;

    invoke-static {v4}, Lorg/acra/ReflectionCollector;->collectConstants(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_e
    sget-object v0, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 503
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v3, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_f
    sget-object v0, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 507
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v3, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_10
    sget-object v0, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 512
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v3, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_11
    sget-object v0, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 515
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v3, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_12
    sget-object v0, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 520
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v3, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/ErrorReporter;->getTotalInternalMemorySize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    :cond_13
    sget-object v0, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 523
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v3, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/ErrorReporter;->getAvailableInternalMemorySize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_14
    sget-object v0, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 528
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v3, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_15
    sget-object v0, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 533
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 535
    sget-object v3, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v4, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    invoke-static {v0}, Lorg/acra/ErrorReporter;->toString(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_16
    sget-object v0, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 540
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 541
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 542
    sget-object v3, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v4, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    :cond_17
    sget-object v0, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 547
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v3, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    invoke-direct {p0}, Lorg/acra/ErrorReporter;->createCustomInfoString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_18
    sget-object v0, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 552
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v3, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    const-string v4, "acra.user.email"

    const-string v5, "N/A"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_19
    sget-object v0, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 557
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v2, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    invoke-static {p1}, Lorg/acra/DeviceFeaturesCollector;->getFeatures(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    :cond_1a
    sget-object v0, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 562
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v2, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    const-class v3, Landroid/os/Environment;

    invoke-static {v3}, Lorg/acra/ReflectionCollector;->collectStaticGettersResults(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    :cond_1b
    sget-object v0, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 567
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v2, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    sget-object v3, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/acra/SettingsCollector;->collectSystemSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    :cond_1c
    sget-object v0, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 572
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v2, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    sget-object v3, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/acra/SettingsCollector;->collectSecureSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :cond_1d
    sget-object v0, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 577
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v1, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    sget-object v2, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/acra/SharedPreferencesCollector;->collect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_1e
    :goto_4
    return-void

    .line 408
    :cond_1f
    const-string v2, ""

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 409
    sget-object v0, Lorg/acra/ACRA;->DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/ReportField;

    goto/16 :goto_0

    .line 447
    :cond_20
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "READ_LOGS not allowed. ACRA will not include LogCat and DropBox data."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 580
    :catch_0
    move-exception v0

    .line 581
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while retrieving crash data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 484
    :cond_21
    :try_start_1
    const-string v0, "not set"

    goto/16 :goto_2

    .line 488
    :cond_22
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v3, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    const-string v4, "Package info unavailable"

    invoke-virtual {v0, v3, v4}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :cond_23
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private static saveCrashReportFile(Ljava/lang/String;Lorg/acra/CrashReportData;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 878
    :try_start_0
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Writing crash report file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    if-nez p1, :cond_2

    .line 880
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    .line 882
    :goto_0
    if-nez p0, :cond_1

    .line 883
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 884
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 885
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 886
    sget-object v3, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {v0, v3}, Lorg/acra/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v3

    .line 887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v3, :cond_0

    sget-object v2, Lorg/acra/ErrorReporter;->SILENT_SUFFIX:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".stacktrace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 889
    :goto_2
    sget-object v2, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 891
    :try_start_1
    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/acra/CrashReportData;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    move-object v0, v1

    .line 899
    :goto_3
    return-object v0

    .line 887
    :cond_0
    const-string v2, ""

    goto :goto_1

    .line 893
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 896
    :catch_0
    move-exception v0

    .line 897
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "An error occured while writing the report file..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    const/4 v0, 0x0

    goto :goto_3

    :cond_1
    move-object v1, p0

    goto :goto_2

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method private static sendCrashReport(Landroid/content/Context;Lorg/acra/CrashReportData;)V
    .locals 5

    .prologue
    .line 847
    const/4 v0, 0x0

    .line 848
    sget-object v1, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/acra/sender/ReportSender;

    .line 850
    :try_start_0
    invoke-interface {p0, p1}, Lorg/acra/sender/ReportSender;->send(Lorg/acra/CrashReportData;)V
    :try_end_0
    .catch Lorg/acra/sender/ReportSenderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    const/4 v0, 0x1

    goto :goto_0

    .line 854
    :catch_0
    move-exception v2

    .line 855
    if-nez v0, :cond_0

    .line 856
    throw v2

    .line 858
    :cond_0
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReportSender of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed but other senders completed their task. ACRA will not send this report again."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 863
    :cond_1
    return-void
.end method

.method private static toString(Landroid/view/Display;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 594
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 595
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    const-string v2, "width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pixelFormat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getPixelFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "refreshRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.density=x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.scaledDensity=x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.widthPixels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.heightPixels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.xdpi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.ydpi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-void
.end method

.method public addReportSender(Lorg/acra/sender/ReportSender;)V
    .locals 1

    .prologue
    .line 1224
    sget-object v0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    return-void
.end method

.method public approvePendingReports()V
    .locals 7

    .prologue
    .line 245
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Mark all pending reports as approved."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->getCrashReportFilesList()[Ljava/lang/String;

    move-result-object v0

    .line 249
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 250
    invoke-direct {p0, v3}, Lorg/acra/ErrorReporter;->isApproved(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    new-instance v4, Ljava/io/File;

    sget-object v5, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    const-string v5, ".stacktrace"

    const-string v6, "-approved.stacktrace"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 253
    new-instance v5, Ljava/io/File;

    sget-object v6, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 249
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_1
    return-void
.end method

.method declared-synchronized checkAndSendReports(Landroid/content/Context;Z)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 942
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#checkAndSendReports - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->getCrashReportFilesList()[Ljava/lang/String;

    move-result-object v0

    .line 944
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 948
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 949
    if-eqz p2, :cond_0

    invoke-direct {p0, v4}, Lorg/acra/ErrorReporter;->isSilent(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 948
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 953
    :cond_0
    const/4 v5, 0x5

    if-lt v3, v5, :cond_2

    .line 976
    :cond_1
    :goto_2
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#checkAndSendReports - finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    monitor-exit p0

    return-void

    .line 957
    :cond_2
    :try_start_1
    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 959
    :try_start_2
    invoke-direct {p0, p1, v4}, Lorg/acra/ErrorReporter;->loadCrashReport(Landroid/content/Context;Ljava/lang/String;)Lorg/acra/CrashReportData;

    move-result-object v5

    .line 960
    invoke-static {p1, v5}, Lorg/acra/ErrorReporter;->sendCrashReport(Landroid/content/Context;Lorg/acra/CrashReportData;)V

    .line 961
    invoke-direct {p0, p1, v4}, Lorg/acra/ErrorReporter;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/acra/sender/ReportSenderException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 974
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 962
    :catch_0
    move-exception v0

    .line 963
    :try_start_3
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to send crash reports"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 964
    invoke-direct {p0, p1, v4}, Lorg/acra/ErrorReporter;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 942
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 966
    :catch_1
    move-exception v0

    .line 967
    :try_start_4
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load crash report for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 968
    invoke-direct {p0, p1, v4}, Lorg/acra/ErrorReporter;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 970
    :catch_2
    move-exception v0

    .line 971
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send crash report for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public checkReportsOnApplicationStart()V
    .locals 4

    .prologue
    .line 1012
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->getCrashReportFilesList()[Ljava/lang/String;

    move-result-object v0

    .line 1013
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 1014
    invoke-direct {p0, v0}, Lorg/acra/ErrorReporter;->containsOnlySilentOrApprovedReports([Ljava/lang/String;)Z

    move-result v1

    .line 1018
    iget-object v2, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v3, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v3, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v3, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_3

    .line 1022
    :cond_0
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v2, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_1

    .line 1025
    sget-object v0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->resToastText()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1028
    :cond_1
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "About to start ReportSenderWorker from #checkReportOnApplicationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    new-instance v0, Lorg/acra/ErrorReporter$ReportsSenderWorker;

    invoke-direct {v0, p0}, Lorg/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lorg/acra/ErrorReporter;)V

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportsSenderWorker;->start()V

    .line 1046
    :cond_2
    :goto_0
    return-void

    .line 1030
    :cond_3
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1035
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter;->deletePendingNonApprovedReports()V

    goto :goto_0

    .line 1042
    :cond_4
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/acra/ErrorReporter;->getLatestNonSilentReport([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/acra/ErrorReporter;->notifySendReport(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deletePendingNonApprovedReports()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1090
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v1, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v1, :cond_0

    move v0, v3

    .line 1091
    :goto_0
    invoke-direct {p0, v2, v3, v0}, Lorg/acra/ErrorReporter;->deletePendingReports(ZZI)V

    .line 1092
    return-void

    :cond_0
    move v0, v2

    .line 1090
    goto :goto_0
.end method

.method public deletePendingReports()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1074
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lorg/acra/ErrorReporter;->deletePendingReports(ZZI)V

    .line 1075
    return-void
.end method

.method public deletePendingSilentReports()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1081
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lorg/acra/ErrorReporter;->deletePendingReports(ZZI)V

    .line 1082
    return-void
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 1123
    sget-object v0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1124
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA is disabled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :goto_0
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1130
    const/4 v0, 0x0

    sput-boolean v0, Lorg/acra/ErrorReporter;->enabled:Z

    .line 1132
    :cond_0
    return-void

    .line 1126
    :cond_1
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ACRA is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getCrashReportFilesList()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 908
    sget-object v0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 909
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Trying to get ACRA reports but ACRA is not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    new-array v0, v4, [Ljava/lang/String;

    .line 928
    :cond_0
    :goto_0
    return-object v0

    .line 913
    :cond_1
    sget-object v0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 914
    if-eqz v0, :cond_2

    .line 915
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for error files in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    new-instance v1, Lorg/acra/ErrorReporter$2;

    invoke-direct {v1, p0}, Lorg/acra/ErrorReporter$2;-><init>(Lorg/acra/ErrorReporter;)V

    .line 923
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 924
    if-nez v0, :cond_0

    new-array v0, v4, [Ljava/lang/String;

    goto :goto_0

    .line 926
    :cond_2
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Application files directory does not exist! The application may not be installed correctly. Please try reinstalling."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    new-array v0, v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public handleException(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportsSenderWorker;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    invoke-virtual {p0, p1, v0}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lorg/acra/ReportingInteractionMode;)Lorg/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    return-object v0
.end method

.method handleException(Ljava/lang/Throwable;Lorg/acra/ReportingInteractionMode;)Lorg/acra/ErrorReporter$ReportsSenderWorker;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 681
    .line 683
    if-nez p2, :cond_2

    .line 686
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    move-object v1, v0

    move v0, v7

    .line 698
    :goto_0
    if-nez p1, :cond_7

    .line 699
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Report requested by developer"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 702
    :goto_1
    sget-object v3, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v1, v3, :cond_0

    sget-object v3, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v1, v3, :cond_1

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v3

    invoke-interface {v3}, Lorg/acra/annotation/ReportsCrashes;->resToastText()I

    move-result v3

    if-eqz v3, :cond_1

    .line 705
    :cond_0
    new-instance v3, Lorg/acra/ErrorReporter$1;

    invoke-direct {v3, p0}, Lorg/acra/ErrorReporter$1;-><init>(Lorg/acra/ErrorReporter;)V

    invoke-virtual {v3}, Lorg/acra/ErrorReporter$1;->start()V

    .line 722
    :cond_1
    sget-object v3, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lorg/acra/ErrorReporter;->retrieveCrashData(Landroid/content/Context;)V

    .line 725
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 726
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 727
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 728
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 731
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 732
    :goto_2
    if-eqz v2, :cond_3

    .line 733
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 734
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_2

    .line 692
    :cond_2
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v1, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v1, :cond_8

    .line 694
    const/4 v0, 0x1

    move-object v1, p2

    goto :goto_0

    .line 736
    :cond_3
    sget-object v2, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v5, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 740
    invoke-static {v6, v6}, Lorg/acra/ErrorReporter;->saveCrashReportFile(Ljava/lang/String;Lorg/acra/CrashReportData;)Ljava/lang/String;

    move-result-object v2

    .line 743
    sget-object v3, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v4, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {v3, v4}, Lorg/acra/CrashReportData;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-object v3, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v4, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    invoke-virtual {v3, v4}, Lorg/acra/CrashReportData;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object v3, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v1, v3, :cond_4

    sget-object v3, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v1, v3, :cond_4

    invoke-static {}, Lorg/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "acra.alwaysaccept"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 750
    :cond_4
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->approvePendingReports()V

    .line 752
    new-instance v1, Lorg/acra/ErrorReporter$ReportsSenderWorker;

    invoke-direct {v1, p0, v0}, Lorg/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lorg/acra/ErrorReporter;Z)V

    .line 753
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "About to start ReportSenderWorker from #handleException"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {v1}, Lorg/acra/ErrorReporter$ReportsSenderWorker;->start()V

    move-object v0, v1

    .line 761
    :goto_3
    return-object v0

    .line 757
    :cond_5
    sget-object v0, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v1, v0, :cond_6

    .line 759
    invoke-virtual {p0, v2}, Lorg/acra/ErrorReporter;->notifySendReport(Ljava/lang/String;)V

    :cond_6
    move-object v0, v6

    .line 761
    goto :goto_3

    :cond_7
    move-object v2, p1

    goto/16 :goto_1

    :cond_8
    move v0, v7

    move-object v1, p2

    goto/16 :goto_0
.end method

.method public handleSilentException(Ljava/lang/Throwable;)Ljava/lang/Thread;
    .locals 3

    .prologue
    .line 787
    sget-boolean v0, Lorg/acra/ErrorReporter;->enabled:Z

    if-eqz v0, :cond_0

    .line 788
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v1, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    invoke-virtual {p0, p1, v0}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lorg/acra/ReportingInteractionMode;)Lorg/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    .line 793
    :goto_0
    return-object v0

    .line 792
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ACRA is disabled. Silent report not sent."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 358
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 359
    const/4 v0, 0x1

    sput-boolean v0, Lorg/acra/ErrorReporter;->enabled:Z

    .line 360
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 361
    sput-object p1, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 363
    sget-object v0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lorg/acra/ConfigurationInspector;->toString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mInitialConfiguration:Ljava/lang/String;

    .line 365
    :cond_0
    return-void
.end method

.method notifySendReport(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 807
    sget-object v0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 810
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v0

    .line 813
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifIcon()I

    move-result v1

    .line 815
    sget-object v2, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 817
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 819
    sget-object v1, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 820
    sget-object v2, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 822
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-class v4, Lorg/acra/CrashReportDialog;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 823
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating Notification for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const-string v3, "REPORT_FILE_NAME"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    sget-object v3, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v3, v4, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 828
    sget-object v3, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v1, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 831
    invoke-virtual {p0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 832
    const/16 v0, 0x29a

    invoke-virtual {p0, v0, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 833
    return-void
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public removeAllReportSenders()V
    .locals 1

    .prologue
    .line 1257
    sget-object v0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1258
    return-void
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public removeReportSender(Lorg/acra/sender/ReportSender;)V
    .locals 1

    .prologue
    .line 1234
    sget-object v0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1235
    return-void
.end method

.method public removeReportSenders(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1243
    const-class v0, Lorg/acra/sender/ReportSender;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    sget-object v0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/acra/sender/ReportSender;

    .line 1245
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1246
    sget-object v1, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1250
    :cond_1
    return-void
.end method

.method public setAppStartDate(Landroid/text/format/Time;)V
    .locals 3

    .prologue
    .line 1277
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v1, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    return-void
.end method

.method public setReportSender(Lorg/acra/sender/ReportSender;)V
    .locals 0

    .prologue
    .line 1266
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->removeAllReportSenders()V

    .line 1267
    invoke-virtual {p0, p1}, Lorg/acra/ErrorReporter;->addReportSender(Lorg/acra/sender/ReportSender;)V

    .line 1268
    return-void
.end method

.method setReportingInteractionMode(Lorg/acra/ReportingInteractionMode;)V
    .locals 0

    .prologue
    .line 1005
    iput-object p1, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    .line 1006
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 614
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA caught a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Building report."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v1, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {v0, v1}, Lorg/acra/CrashReportData;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    invoke-virtual {p0, p2}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    .line 624
    iget-object v1, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v2, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v1, v2, :cond_0

    .line 627
    const-wide/16 v1, 0xfa0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 633
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 634
    :goto_1
    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportsSenderWorker;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 639
    :catch_0
    move-exception v1

    .line 640
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 628
    :catch_1
    move-exception v1

    .line 629
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 645
    :cond_1
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v1, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v1, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v0

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->forceCloseDialogAfterToast()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    :cond_2
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 667
    :goto_2
    return-void

    .line 655
    :cond_3
    const-string v0, "Application"

    .line 657
    :try_start_2
    sget-object v0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 658
    sget-object v1, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sget-object v1, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 659
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " fatal error : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 663
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 664
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 660
    :catch_2
    move-exception v0

    .line 661
    :try_start_3
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 663
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 664
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 663
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 664
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    throw v0
.end method
