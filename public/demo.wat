(module
    ;;(import "test" "test" (func $test (param i32) (result i32)))
    (func $WebGL.test (;8;) (import "WebGL" "test") (param i32 i32))

    (memory 1)
    (export "memory" (memory 0))

    (data (i32.const 8) "hello world\n")


;;(export "addTwo" (func $addTwo))
 ;; (func $addTwo (; 0 ;) (param $0 i32) (result i32)
   ;; (i32.add
   ;;;   (get_local $0)
    ;;  (i32.const 2)
    ;;;)

    ;;(call $WebGL.test
    ;;;  (i32.const 1)
    ;;)
  ;;;)
;;)



(func $main (export "testC") (param i32)
;;(export "testC" (func $testC))
   ;; (func $testC (; 0 ;) (param $0 i32) (result i32)
        ;;(i32.store (i32.const 0) (i32.const 8))
        
       ;; (i32.store (i32.const 0) (i32.const 8))

        ;;(call $fd_write
        ;;    (i32.const 1) ;; file_descriptor - 1 for stdout
        ;;    (i32.const 0) ;; *iovs - The pointer to the iov array, which is stored at memory location 0
        ;;    (i32.const 1) ;; iovs_len - We're printing 1 string stored in an iov - so one.
        ;;    (i32.const 20) ;; nwritten - A place in memory to store the number of bytes written
        ;;)

        ;;(i32.store (i32.const 0) (i32.const 8))  ;; iov.iov_base - This is a pointer to the start of the 'hello world\n' string
        ;;(i32.store (i32.const 4) (i32.const 12))  ;; iov.iov_len - The length of the 'hello world\n' string

        (call $WebGL.test
       ;;    (i32.const 1) ;; file_descriptor - 1 for stdout
        ;;    (i32.const 0) ;; *iovs - The pointer to the iov array, which is stored at memory location 0
        ;;    (i32.const 1) ;; iovs_len - We're printing 1 string stored in an iov - so one.
        ;;    (i32.const 20) ;; nwritten - A place in memory to store the number of bytes written
        )
        ;;drop ;; Discard the number of bytes written from the top of the stack
)