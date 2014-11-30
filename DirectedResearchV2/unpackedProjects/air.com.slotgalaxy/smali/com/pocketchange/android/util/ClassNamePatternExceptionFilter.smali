.class public Lcom/pocketchange/android/util/ClassNamePatternExceptionFilter;
.super Lcom/pocketchange/android/util/StackTraceElementExceptionFilter;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/pocketchange/android/util/StackTraceElementExceptionFilter;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/pocketchange/android/util/ClassNamePatternExceptionFilter;->a:Ljava/util/regex/Pattern;

    .line 10
    return-void
.end method


# virtual methods
.method public traceElementMatches(Ljava/lang/StackTraceElement;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/pocketchange/android/util/ClassNamePatternExceptionFilter;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method
