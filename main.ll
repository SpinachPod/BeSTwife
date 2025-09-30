; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

@.str.1 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@str = private unnamed_addr constant [64 x i8] c"hello\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp willreturn uwtable(sync)
define noundef ptr @new_bst_node(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %0, i64 63)
  %7 = getelementptr inbounds i8, ptr %3, i64 63
  store i8 0, ptr %7, align 1, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %3, i64 72
  %9 = icmp eq ptr %1, null
  %10 = getelementptr inbounds i8, ptr %3, i64 88
  %11 = zext i1 %9 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i8 %11, ptr %10, align 8, !tbaa !9
  %12 = getelementptr inbounds i8, ptr %3, i64 64
  store ptr %1, ptr %12, align 8, !tbaa !13
  br label %13

13:                                               ; preds = %2, %5
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind ssp willreturn uwtable(sync)
define void @insert_child_left(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull readonly dereferenceable(1) %1, i64 63)
  %7 = getelementptr inbounds i8, ptr %3, i64 63
  store i8 0, ptr %7, align 1, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %3, i64 72
  %9 = icmp eq ptr %0, null
  %10 = getelementptr inbounds i8, ptr %3, i64 88
  %11 = zext i1 %9 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i8 %11, ptr %10, align 8, !tbaa !9
  %12 = getelementptr inbounds i8, ptr %3, i64 64
  store ptr %0, ptr %12, align 8, !tbaa !13
  br label %13

13:                                               ; preds = %2, %5
  %14 = getelementptr inbounds i8, ptr %0, i64 80
  store ptr %3, ptr %14, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree nounwind ssp willreturn uwtable(sync)
define void @insert_child_right(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull readonly dereferenceable(1) %1, i64 63)
  %7 = getelementptr inbounds i8, ptr %3, i64 63
  store i8 0, ptr %7, align 1, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %3, i64 72
  %9 = icmp eq ptr %0, null
  %10 = getelementptr inbounds i8, ptr %3, i64 88
  %11 = zext i1 %9 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i8 %11, ptr %10, align 8, !tbaa !9
  %12 = getelementptr inbounds i8, ptr %3, i64 64
  store ptr %0, ptr %12, align 8, !tbaa !13
  br label %13

13:                                               ; preds = %2, %5
  %14 = getelementptr inbounds i8, ptr %0, i64 72
  store ptr %3, ptr %14, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree nounwind ssp uwtable(sync)
define noundef i32 @main() local_unnamed_addr #2 {
  %1 = tail call dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %1, ptr noundef nonnull readonly align 1 dereferenceable(63) @str, i64 63, i1 false)
  %4 = getelementptr inbounds i8, ptr %1, i64 63
  store i8 0, ptr %4, align 1, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %1, i64 72
  %6 = getelementptr inbounds i8, ptr %1, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i8 1, ptr %6, align 8, !tbaa !9
  %7 = getelementptr inbounds i8, ptr %1, i64 64
  store ptr null, ptr %7, align 8, !tbaa !13
  br label %8

8:                                                ; preds = %0, %3
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias returned writeonly, ptr noalias nocapture readonly, i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree nounwind ssp willreturn uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #2 = { nofree nounwind ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #4 = { nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Apple clang version 17.0.0 (clang-1700.0.13.5)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 88}
!10 = !{!"BstNode", !7, i64 0, !11, i64 64, !11, i64 72, !11, i64 80, !12, i64 88}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"_Bool", !7, i64 0}
!13 = !{!10, !11, i64 64}
!14 = !{!10, !11, i64 80}
!15 = !{!10, !11, i64 72}
